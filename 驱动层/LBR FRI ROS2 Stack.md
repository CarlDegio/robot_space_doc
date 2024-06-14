# 使用
## 实物启动
```bash
ros2 launch lbr_bringup lbr_bringup.launch.py model:=iiwa14 sim:=false # model:=[iiwa7/iiwa14/med7/med14]
```
还需要加入个命名空间，目前无命名空间很可能会冲突。
目前主要发现，RViz2通过RobotModel同步机器人状态，可以Add Moveit的MotionPlanning执行可视化的规划与运动。运动是以service或是action方式调用的，而moveit设置了阻塞从而上一个规划未执行完的时候，无法开始执行下一个规划。

还需要看看如何发伺服指令（async），或者如何从更底层控制。

# 安装
参考[github](https://github.com/KCL-BMEIS/lbr_fri_ros2_stack)说明完成了安装，同时安装了gazebo，moveit等工具

# 连接
在控制柜代码中，需要烧入fri的接口代码，主要需要修改上位机的IP，目前默认是172.31.1.151
对上位机，连接FRI配置的网络连接即可。