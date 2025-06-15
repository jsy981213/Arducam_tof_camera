#include <insightface/detection/scrfd.h>
#include <insightface/recognition/arcface.h>
#include <opencv2/opencv.hpp>
#include <fstream>
#include <unordered_map>
#include <numeric>

#ifndef MODEL_DIR
#define MODEL_DIR "./models"
#endif

static float cosine(const std::vector<float>& a, const std::vector<float>& b) {
    float dot = 0, na = 0, nb = 0;
    for (size_t i = 0; i < a.size(); ++i) {
        dot += a[i] * b[i];
        na  += a[i] * a[i];
        nb  += b[i] * b[i];
    }
    return dot / (std::sqrt(na) * std::sqrt(nb) + 1e-6f);
}

using FaceDB = std::unordered_map<std::string, std::vector<float>>;

FaceDB load_db(const std::string& path) {
    FaceDB db;
    std::ifstream ifs(path);
    std::string id;
    float v;
    while (ifs >> id) {
        std::vector<float> feat(512);
        for (float& x : feat) ifs >> x;
        db.emplace(id, std::move(feat));
    }
    return db;
}

int main(int argc, char** argv) {
    insightface::SCRFD detector;
    detector.load_model(std::string(MODEL_DIR) + "/scrfd_2.5g_kps.onnx", 0);

    insightface::ArcFace recognizer;
    recognizer.load_model(std::string(MODEL_DIR) + "/glintr100.onnx", 0);
    std::cout << "Models loaded." << std::endl;

    FaceDB db = load_db("faces.db");
    const float THRESH = 0.35f;

    cv::VideoCapture cap(0);
    if (!cap.isOpened()) return -1;

    while (true) {
        cv::Mat frame;
        cap >> frame;
        if (frame.empty()) break;

        std::vector<insightface::FaceInfo> faces;
        detector.detect(frame, faces);

        for (auto& f : faces) {
            cv::Mat aligned = detector.get_aligned(frame, f);
            std::vector<float> feat;
            recognizer.get_feat(aligned, feat);

            std::string best_id = "unknown";
            float best_dist = 1e9;
            for (auto& item : db) {
                float dist = 1 - cosine(feat, item.second);
                if (dist < best_dist) {
                    best_dist = dist;
                    best_id = item.first;
                }
            }
            if (best_dist > THRESH) best_id = "unknown";

            cv::rectangle(frame,
                          cv::Point(f.bbox.x1, f.bbox.y1),
                          cv::Point(f.bbox.x2, f.bbox.y2),
                          cv::Scalar(0, 255, 0), 2);
            cv::putText(frame, best_id,
                        cv::Point(f.bbox.x1, f.bbox.y1 - 5),
                        cv::FONT_HERSHEY_SIMPLEX, 0.8,
                        best_id == "unknown" ? cv::Scalar(0, 0, 255) : cv::Scalar(0, 255, 0),
                        2);
        }

        cv::imshow("FaceID", frame);
        char key = (char)cv::waitKey(1);
        if (key == 27) break;
        if (key == 'r' && faces.size() == 1) {
            std::string new_id;
            std::cout << "Enter id: ";
            std::cin >> new_id;
            auto aligned = detector.get_aligned(frame, faces[0]);
            std::vector<float> feat;
            recognizer.get_feat(aligned, feat);
            db[new_id] = feat;

            std::ofstream ofs("faces.db", std::ios::app);
            ofs << '\n' << new_id;
            for (float x : feat) ofs << ' ' << x;
            ofs.close();
            std::cout << "Saved " << new_id << std::endl;
        }
    }
    return 0;
}
