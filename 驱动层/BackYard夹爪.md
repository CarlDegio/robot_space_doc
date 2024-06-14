# 使用
## wifi连接
通过无线WIFI连接名称为backyardxxxx的网络（xxxx是序列号），密码WelcomeBYWorld2018，然后访问192.168.0.1。其中可进行一些手动调整，并且查看配置TCP/IP连接的IP

## 网线连接
插上网线后，设置一个本机网络，将自己的IP设定为与网页设置中同网关，目前设置为172.31.1.151即可，并且连接上该网络。
之后可用172.31.1.2访问网页，表明连接成功。

## ROS2使用
加载环境变量后运行节点
```bash
ros2 run bye140_ros2 start_node
```
主要功能有标定，取得标定状态，重启，关机，运动的service，提供当前状态的话题。
```
service:
calibrate_gripper 用于标定
moveto 提供position,speed,acceleration,torque,tolerance,waitflag执行运动，waitflag是bool其他是double
topic:
by_status 提供position,speed,force，都是float
```
还需要编写一个launch，方便使用；测试一下夹爪是不是伺服

# 编写
主要借助于官方提供的TCP/IP方案的SDK，基本一一对应，删减了一些话题数量。

TODO：将一些不常变的配置化为参数。
