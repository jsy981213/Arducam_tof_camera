import cv2
import numpy as np
import os
import pickle
import ArducamDepthCamera as ac
from insightface.app import FaceAnalysis

MAX_DISTANCE = 4000


def main():
    print("Arducam Depth Camera InsightFace Demo")
    cam = ac.ArducamCamera()
    ret = cam.open(ac.Connection.CSI, 0)
    if ret != 0:
        print("Failed to open camera. Error code:", ret)
        return

    ret = cam.start(ac.FrameType.DEPTH)
    if ret != 0:
        print("Failed to start camera. Error code:", ret)
        cam.close()
        return

    cam.setControl(ac.Control.RANGE, MAX_DISTANCE)

    face_app = FaceAnalysis(providers=['CPUExecutionProvider'])
    face_app.prepare(ctx_id=0, det_size=(640, 640))

    embeddings = {}
    print("Press 'r' to register face, 'q' to quit")
    while True:
        frame = cam.requestFrame(2000)
        if frame is not None and isinstance(frame, ac.DepthData):
            depth_buf = frame.depth_data
            preview = (depth_buf * (255.0 / MAX_DISTANCE)).astype(np.uint8)
            preview = cv2.cvtColor(preview, cv2.COLOR_GRAY2BGR)
            faces = face_app.get(preview)
            for face in faces:
                box = face.bbox.astype(int)
                cv2.rectangle(preview, (box[0], box[1]), (box[2], box[3]), (0, 255, 0), 2)

            cv2.imshow("preview", preview)
            cam.releaseFrame(frame)
        else:
            continue

        key = cv2.waitKey(1) & 0xFF
        if key == ord('q'):
            break
        elif key == ord('r') and faces:
            name = input("Enter name: ").strip()
            embeddings[name] = faces[0].embedding
            print(f"Registered {name}")

    cam.stop()
    cam.close()

    if embeddings:
        with open('registered_faces.pkl', 'wb') as f:
            pickle.dump(embeddings, f)
        print("Saved embeddings to registered_faces.pkl")


if __name__ == "__main__":
    main()
