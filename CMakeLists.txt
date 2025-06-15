cmake_minimum_required(VERSION 3.16)
project(TOFCameraExample LANGUAGES CXX)

set(CMAKE_CXX_STANDARD 17)
set(CMAKE_CXX_STANDARD_REQUIRED ON)

find_package(OpenCV REQUIRED)
find_package(ArducamDepthCamera REQUIRED)

add_subdirectory(third_party/insightface/cpp-package/inspireface)

add_executable(face_app src/face_app.cpp)

target_include_directories(face_app PRIVATE
    /usr/local/onnxruntime/include
    third_party/insightface/cpp/include
)
target_link_directories(face_app PRIVATE
    /usr/local/onnxruntime/lib
)

target_link_libraries(face_app
    PRIVATE
        ArducamDepthCamera::ArducamDepthCamera
        insightface
        onnxruntime
        ${OpenCV_LIBS}
)

target_compile_definitions(face_app PRIVATE
    MODEL_DIR="${CMAKE_SOURCE_DIR}/third_party/insightface/models"
)

