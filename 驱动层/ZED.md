# 使用
## ROS2使用

```bash
ros2 launch zed_wrapper zed2i.launch.py
或
ros2 launch zed_display_rviz display_zed2i.launch.py
```
前者只启动了API接口，只发布消息到ROS空间中。后者同时启动API接口和可视化。
第一次启动可能会卡顿，ZED将会下载网络权重并在本地进行训练。

## 例子调用
zed-examples下包含基础用例，常用的有：
spatial mapping，空间点云/网格图构建
object detection，物体识别，主要是人的识别，还可以接入自定义的detector
body tracking，人体姿态识别，包含眼睛耳朵鼻子，身体关节


# 本机安装（docker下无需）
## 自身驱动安装
同时安装了CUDA11.7及自动安装的显卡驱动
参考[教程](https://www.stereolabs.com/docs/installation/linux/) 完成了安装，应该在python,C++上都可用了
```
安装过程报了一些问题
  WARNING: The scripts cygdb, cython and cythonize are installed in '/home/rcir/.local/bin' which is not on PATH.
  Consider adding this directory to PATH or, if you prefer to suppress this warning, use --no-warn-script-location.
  WARNING: The scripts f2py, f2py3 and f2py3.8 are installed in '/home/rcir/.local/bin' which is not on PATH.
  Consider adding this directory to PATH or, if you prefer to suppress this warning, use --no-warn-script-location.
Successfully installed cython-0.29.32 numpy-1.23.5 pyzed-3.8
Done
  To install it later or on a different environment run : 
 python -m pip install --ignore-installed /tmp/selfgz6928/pyzed-3.8-cp38-cp38-linux_x86_64.whl
The ZED Python API was installed for 'python3', when using conda environement or virtualenv, the ZED Python API may need to be resetup to be available (using 'python /usr/local/zed/get_python_api.py')
不过在conda下的使用，教程上也有说明
```

## ROS2驱动安装
参考官网[教程](https://www.stereolabs.com/docs/ros2/)，安装了zed-ros2-wrapper和zed-ros2-example，基本可以直接执行，发布的话题较多，可能需要筛选一下