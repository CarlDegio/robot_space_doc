# 启动

ros2 run gelsight_ros2 gelsight_showimage 发布图像到/gsmini/image话题
ros2 run gelsight_ros2 gelsight_show3d 发布点云到/gsmini/pcb话题

# 安装
使用官方[sdk](https://github.com/gelsightinc/gsrobotics)

example中使用了相机的部分名称，相机全名是GelSight Mini R0B 28GH-EJZ8: Ge这种，example代码中仅使用了子集。当需要使用多个gelsight时，可以考虑使用全名参数。


**2023.2.15**，官方仓库有更新，去掉了Cpython的泊松重建部分，全部改为了Python
