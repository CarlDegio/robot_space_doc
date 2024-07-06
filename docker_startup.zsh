xhost +

docker run -it \
-e DISPLAY -v /tmp/.X11-unix/:/tmp/.X11-unix \
-v ~/robot_space:/root/ros2_ws \
-v /dev:/dev --privileged \
-v ~/zed/zed_ai/:/usr/local/zed/resources/ \
-v ~/zed/zed_settings/:/usr/local/zed/settings/ \
--network host \
--runtime=nvidia \
--ipc=host --pid=host \
--rm \
carldegio/robot_image:0.75
