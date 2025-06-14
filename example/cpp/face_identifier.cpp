#include "ArducamTOFCamera.hpp"
#include <opencv2/opencv.hpp>
#include <iostream>
#include <fstream>
#include <map>
#include <vector>
#include <cmath>
#include "../../third_party/insightface/face_recognizer_stub.hpp"

using namespace Arducam;

#define MAX_DISTANCE 4000
using Embedding = std::vector<float>;
static std::map<std::string, Embedding> database;

static void save_embeddings(const std::string& path){
    std::ofstream ofs(path, std::ios::binary);
    size_t count = database.size();
    ofs.write((char*)&count, sizeof(size_t));
    for(auto& [name, emb]: database){
        size_t len=name.size();
        ofs.write((char*)&len, sizeof(size_t));
        ofs.write(name.data(), len);
        size_t dim=emb.size();
        ofs.write((char*)&dim, sizeof(size_t));
        ofs.write((char*)emb.data(), dim*sizeof(float));
    }
}

static void load_embeddings(const std::string& path){
    std::ifstream ifs(path, std::ios::binary);
    if(!ifs) return;
    size_t count; ifs.read((char*)&count, sizeof(size_t));
    for(size_t i=0;i<count;++i){
        size_t len; ifs.read((char*)&len, sizeof(size_t));
        std::string name(len,' '); ifs.read(name.data(), len);
        size_t dim; ifs.read((char*)&dim, sizeof(size_t));
        Embedding emb(dim); ifs.read((char*)emb.data(), dim*sizeof(float));
        database[name]=emb;
    }
}

static float cosine_similarity(const Embedding& a, const Embedding& b){
    float dot=0,na=0,nb=0;
    for(size_t i=0;i<a.size();++i){
        dot+=a[i]*b[i];
        na+=a[i]*a[i];
        nb+=b[i]*b[i];
    }
    return dot/(std::sqrt(na)*std::sqrt(nb)+1e-5f);
}

static void register_mode(ArducamTOFCamera& cam, insightface::FaceRecognizer& fr){
    std::cout<<"Press r to register face, q to quit"<<std::endl;
    while(true){
        ArducamFrameBuffer* frame = cam.requestFrame(200);
        if(!frame) continue;
        FrameFormat fmt; frame->getFormat(FrameType::DEPTH_FRAME, fmt);
        float* depth_ptr=(float*)frame->getData(FrameType::DEPTH_FRAME);
        cv::Mat depth(fmt.height, fmt.width, CV_32F, depth_ptr);
        cv::Mat img; depth.convertTo(img, CV_8U, 255.0/MAX_DISTANCE);
        cv::cvtColor(img, img, cv::COLOR_GRAY2BGR);
        auto faces = fr.detect(img);
        for(auto& f: faces){ cv::rectangle(img, f.bbox, {0,255,0}, 2); }
        cv::imshow("preview", img);
        int key=cv::waitKey(1);
        if(key=='q'){ cam.releaseFrame(frame); break; }
        else if(key=='r' && !faces.empty()){
            std::string name; std::cout<<"Name: "; std::cin>>name;
            database[name]=fr.getEmbedding(img, faces[0]);
            std::cout<<"Registered "<<name<<std::endl;
        }
        cam.releaseFrame(frame);
    }
    save_embeddings("embeddings.dat");
}

static void identify_mode(ArducamTOFCamera& cam, insightface::FaceRecognizer& fr){
    load_embeddings("embeddings.dat");
    std::cout<<"Press q to quit"<<std::endl;
    while(true){
        ArducamFrameBuffer* frame=cam.requestFrame(200);
        if(!frame) continue;
        FrameFormat fmt; frame->getFormat(FrameType::DEPTH_FRAME, fmt);
        float* depth_ptr=(float*)frame->getData(FrameType::DEPTH_FRAME);
        cv::Mat depth(fmt.height, fmt.width, CV_32F, depth_ptr);
        cv::Mat img; depth.convertTo(img, CV_8U, 255.0/MAX_DISTANCE);
        cv::cvtColor(img, img, cv::COLOR_GRAY2BGR);
        auto faces=fr.detect(img);
        for(auto& f: faces){
            Embedding emb=fr.getEmbedding(img, f);
            std::string best="unknown"; float best_score=0;
            for(auto& [name, db_emb]: database){
                float sc=cosine_similarity(emb, db_emb);
                if(sc>best_score){ best_score=sc; best=name; }
            }
            cv::rectangle(img, f.bbox, {0,255,0}, 2);
            cv::putText(img, best, {f.bbox.x, f.bbox.y-5}, cv::FONT_HERSHEY_SIMPLEX, 0.5, {0,255,0});
        }
        cv::imshow("preview", img);
        int key=cv::waitKey(1);
        if(key=='q'){ cam.releaseFrame(frame); break; }
        cam.releaseFrame(frame);
    }
}

int main(){
    ArducamTOFCamera cam; ArducamFrameBuffer* frame;
    if(cam.open(Connection::CSI,0)){
        std::cerr<<"Failed to open camera"<<std::endl; return -1; }
    if(cam.start(FrameType::DEPTH_FRAME)){
        std::cerr<<"Failed to start camera"<<std::endl; return -1; }
    cam.setControl(Control::RANGE, MAX_DISTANCE);

    insightface::FaceRecognizer fr; fr.loadModel("models/antelopev2.onnx");
    std::cout<<"Select mode (r=register, i=identify): ";
    char m; std::cin>>m;
    if(m=='r') register_mode(cam, fr);
    else if(m=='i') identify_mode(cam, fr);

    cam.stop(); cam.close();
    return 0;
}
