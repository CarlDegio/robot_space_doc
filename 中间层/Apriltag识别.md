# 简介
Apriltag是一种图像二维码，可以通过二维码特征进行图片上的关键点识别（角点），进而使用P4P进行二维码相对相机姿态的解算。

使用ROS2的Apriltag包，[链接](https://github.com/christianrauch/apriltag_ros)，使用`image_transport`传输图像，这个在foxy上可能还有些问题。
# 使用

## 单节点
加载工作空间middle_layer_ws后，启动：
```bash
ros2 run apriltag_ros apriltag_node --ros-args \
-r image_rect:=/zed2i/zed_node/rgb/image_rect_color \
-r camera_info:=/zed2i/zed_node/rgb/camera_info --params-file `ros2 pkg prefix apriltag_ros`/share/apriltag_ros/cfg/tags_48h12.yaml

```
将订阅相机的图像话题和相机内参话题，输出话题/tf与/detections，detections包含图像的角点坐标，单应矩阵。/tf话题内则已经解算了相对姿态。

## 进程内通信
使用ROS2 component特性，将多个节点封装入一个进程，实现进程内的高效通信，节约资源。Apriltag的节点支持，需要看下ZED的组合节点如何启动。