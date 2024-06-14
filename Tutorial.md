# docker
了解docker，安装docker，并配置非管理员模式（无需sudo docker，直接docker），配置docker pull代理（daemons.json）与容器内代理（~/.docker/config.json）。可参考README进行操作。已经内置了ubuntu22系统与ros2 humble编译环境。

在用户目录下创建robot_space，ros2_driver_layer工作空间，interface_middle_layer工作空间，usercode工作空间。分别都创建src文件夹

# 机械臂
安装[机械臂包](https://github.com/lbr-stack/lbr_fri_ros2_stack)到ros2_driver_layer工作空间（在ros2_driver_layer路径之下，src之上，用`vcs import src --input https://raw.githubusercontent.com/lbr-stack/lbr_fri_ros2_stack/humble/lbr_fri_ros2_stack/repos-fri-${FRI_CLIENT_VERSION}.yaml`）

运行仿真验证包的安装成功，还可连接实物测试simple demo和advanced demo的效果。实物的[运行参考连接](https://lbr-stack.readthedocs.io/en/latest/lbr_fri_ros2_stack/lbr_demos/doc/lbr_demos.html#simple)

# 相机
ZED包的[安装](https://www.stereolabs.com/docs/ros2)与启动，在ros2_driver_layer的src之下进行操作，安装zed-ros2-examples和zed-ros2-wrapper包并编译运行测试例

# 调试todolist
手眼相机的安装与标定（如果不用点云可能不需要标定）

机械臂ros阻抗模式之下的控制，在interface_middle_layer下实现，已有一个不太完美的末端控制，可能需要再提升一下

rosbag的录制

tac3d的ros2包

拖动示教的复现，或是手控器示教

在usercode内实现几个任务脚本

根据关节力矩等设计安全保护程序（可含在末端控制中），防止危险碰撞