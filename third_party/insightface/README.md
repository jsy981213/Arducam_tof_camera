# InsightFace C++ Integration

This folder is a placeholder for the official [InsightFace](https://github.com/deepinsight/insightface) repository.

To use the C++ example in this project, clone the InsightFace source here and build the C++ API:

```bash
git clone https://github.com/deepinsight/insightface.git third_party/insightface
# build instructions can be found in the repository
```

After building, replace `face_recognizer_stub.hpp` with the real headers and make sure the ONNX model
(e.g. `antelopev2.onnx`) is placed in the `models` directory.
