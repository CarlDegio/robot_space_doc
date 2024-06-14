# 概述
为了方便使用机器人多组件，采用了ROS2框架；为了方便环境迁移，采用了docker容器虚拟机。制作了ros2 humble版本的镜像（基于ZED镜像增添功能）便于快速调用机器人功能。

架构分两层，按ros工作空间区分为驱动层ros2_driver_layer和中间层interface_middle_layer。
1. 驱动层用于沟通每个组件的API与ROS接口，便于通过ROS读取组件信息或控制组件，如通过ROS话题获得相机图像，或是通过话题对机械臂发送关节角度指令。
2. 中间层用于调用ROS接口实现一些低级功能

通过obsidian打开doc文件夹，观感会更好

# 安装环境

安装docker-engine，并且配置docker用户组（非sudo 也能使用docker）
安装nvidia container toolkit，将本机的GPU映射到容器内
本机显卡驱动使用535及以上，为了支持容器内高版本的cuda

# 安装
将robot_space放在主目录下，即满足~/robot_space/doc的路径
镜像地址：https://hub.docker.com/repository/docker/carldegio/robot_image/tags?page=1&ordering=last_updated

# 使用
启动与docker常用：
docker run 将镜像启动为容器，配置比较复杂，配置了docker_startup.zsh供本地启动（可依据自己的命令行改为.bash或.zsh）
docker start -it xxx 打开已经关闭（exited）的容器
docker exec -ai xxx 附加到正在运行的容器
容器内 exit 关闭容器
docker ps -a 看所有容器的状态
docker image ls 看所有镜像的状态
可通过docker_startup.zsh启动

进入后需要手动source每个工作空间下的install/setup.bash文件，才能加载工作空间的包
容器内相当于虚拟机，与本机无差异
