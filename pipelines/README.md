<div align="center">
  <h1 align="center">TRG-planner<br></h1>
  <a href="https://github.com/url-kaist/TRG-planner"><img src="https://img.shields.io/badge/-C++-blue?logo=cplusplus" /></a>
  <a href="https://github.com/url-kaist/TRG-planner"><img src="https://img.shields.io/badge/Python-3670A0?logo=python&logoColor=ffdd54" /></a>
  <a href="https://github.com/url-kaist/TRG-planner"><img src="https://img.shields.io/badge/ROS1-Noetic-blue" /></a>
  <a href="https://github.com/url-kaist/TRG-planner"><img src="https://img.shields.io/badge/ROS2-Humble-blue" /></a>
  <a href="https://github.com/url-kaist/TRG-planner"><img src="https://img.shields.io/badge/Linux-FCC624?logo=linux&logoColor=black" /></a>
  <a href="https://github.com/url-kaist/TRG-planner"><img src="https://img.shields.io/badge/docker-257bd6?&logo=docker&logoColor=white" /></a>
  <br/>
<a href="https://ieeexplore.ieee.org/document/10819646"><img src="https://img.shields.io/badge/RA--L-10819646-004088.svg"/></a>
<a href="https://arxiv.org/abs/2501.01806"><img src="https://img.shields.io/badge/arXiv-2501.01806-b33737.svg"/></a>
  <br/>
  <br/>
  <p align="center">
      <img src="https://github.com/user-attachments/assets/7d1b97c0-ed94-47c3-ac20-a92d7039fea4" alt="TRG-planner banner" width=80%></a>
      <br>
      <p><strong><em>Most versatile safe-aware path planner.</em></strong></p>
  </p>
</div>

______________________________________________________________________

# TRG-planner ROS Pipeline

This repository provides a ROS-based pipeline for TRG-planner.
It allows users to build the autonomous navigation framework, integrating with other algorithms such as odometry and terrain mapping.

## 📦 Prerequisites

Before setting up the ROS environment, make sure to install TRG-planner first:

```commandline
cd ${MAIN_DIR_OF_TRG_PLANNER}
sudo make cppinstall
```

After installing TRG-planner, download the example prebuilt map files:

```commandline
cd ${MAIN_DIR_OF_TRG_PLANNER}/shellscripts
bash download_maps.sh
```

After the download is complete, you will find two `.pcd` files in `prebuilt_maps` directory.

## ⚙️ How To Build & Run

### 🐱 ROS1 (Noetic)

If your system is using ROS1, build the ROS1 package

```commandline
cd ${ROS1_WORKSPACE}
catkin build
source devel/setup.bash
```

Launch the ROS node using the following command:

```commandline
roslaunch trg_planner_ros trg_planner_wMap.launch map:=indoor rviz:=true
```

To test path planning without external odometry modules, run `fake_pose_pub.py` in a separate termial

```commandline
cd ros1/scripts
python3 fake_pose_pub.py
```

### 🐻 ROS2 (Humble)

If your system is using ROS2, build the ROS2 package

```commandline
cd ${ROS2_WORKSPACE}
colcon build
source install/setup.bash
```

Launch the ROS node using the following command:

```commandline
ros2 launch trg_planner_ros trg_planner_wMap.py map:=indoor rviz:=true
```

To test path planning without external odometry modules, run `fake_pose_pub.py` in a separate termial

```commandline
cd ros2/scripts
python3 fake_pose_pub.py
```

______________________________________________________________________

## 🎯 Result

After running the nodes, you can interact with the system using RViz as shown below:

<p align="center">
    <img src="https://github.com/user-attachments/assets/3a20ed37-8d92-49b6-8c3d-8ca0410a9570" alt="TRG-planneasdfr banner" width=100%></a>
</p>

- `2D Pose Estimate`: fake pose publisher
- `2D Nav Goal` (ROS1) or `2D Goal Pose` (ROS2): fake goal publisher

______________________________________________________________________

## 🛠 Configuration

Please visit our [**Map configuration details**](https://github.com/url-kaist/TRG-planner/tree/main/config).

You can also customize the ROS parameters in `{ros1/ros2}/config/{ros1/ros2}_params.yaml` before launching the node.

### Example Configuration

```yaml
ros1:
  isDebug: true
  frameId: "map"
  publishRate: 10.0
  debugRate: 1.0
  topic:
    input:
      egoPose: "/trg/input/default_pose"
      egoOdom: "/fake_robot_pose"
      obsCloud: "/trip/trip_updated/alocal_cloud"
      obsGrid: "/elevation_mapping/elevation_map_raw__"
      goal: "/fake_goal"
    output:
      preMap: "/trg/output/default_preMap"
      goal: "/trg/output/default_goal"
      path: "/trg/output/default_path"
    debug:
      globalTRG: "/trg/debug/default_globalTRG"
      localTRG: "/trg/debug/default_localTRG"
      obsMap: "/trg/debug/default_obsMap"
      pathInfo: "/trg/debug/default_pathInfo"
```

### Parameter Descriptions

| Parameter      | Description |
|---------------|-------------|
| `isDebug`  | Flag to indicate whether debug topics are published |
| `frameId`  | Frame ID for visualization outputs |
| `publishRate`   | Rate at which the main data is published |
| `debugRate`  | Rate at which debug data is published |
| `topic`   | Topic names for ROS communication |

______________________________________________________________________

## 📌 Notes

- Ensure location of **prebuilt PCD files** in the correct directory.
- Verify that **PCL and ROS dependencies** are correctly installed.
- Modify the **topic names** for your own odometry and mapping algorithms.

______________________________________________________________________

## 📝 Citation

If you use this package for any academic work, please cite our original [paper](https://ieeexplore.ieee.org/document/10819646), or [arxiv](https://arxiv.org/abs/2501.01806)

```bibtex
@article{lee2025trg,
      title     = {{TRG-planner: Traversal risk graph-based path planning in unstructured environments for safe and efficient navigation}},
      author    = {Lee, Dongkyu and Nahrendra, I Made Aswin and Oh, Minho and Yu, Byeongho and Myung, Hyun},
      journal   = {IEEE Robotics and Automation Letters},
      volume    = {10},
      number    = {2},
      pages     = {1736--1743},
      year      = {2025},
      publisher = {IEEE}
    }
```

______________________________________________________________________

## 📜 License

The TRG-planner code provided in this repository is released under the [Apache-2.0 with Commons Clause license](./LICENSE).
