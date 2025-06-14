#ifndef INSIGHTFACE_STUB_HPP
#define INSIGHTFACE_STUB_HPP
#include <opencv2/core.hpp>
#include <vector>
#include <string>

namespace insightface {
struct FaceInfo {
    cv::Rect bbox;
    std::vector<float> embedding;
};

class FaceRecognizer {
public:
    bool loadModel(const std::string&){return true;}
    std::vector<FaceInfo> detect(const cv::Mat&){return {};}
    std::vector<float> getEmbedding(const cv::Mat&, const FaceInfo&){return {};}
};
}

#endif // INSIGHTFACE_STUB_HPP
