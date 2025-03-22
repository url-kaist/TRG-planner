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

# Map Configuration

### Example Configuration

```yaml
isVerbose: false
timer:
  graphRate: 5.0
  planningRate: 10.0
map:
  isPrebuiltMap: true
  prebuiltMapPath: "prebuilt_maps/sim_mountain_0.1.pcd"
  isVoxelize: false
  voxelSize: 0.1
trg:
  isPrebuiltTRG: false
  prebuiltTRGPath: "prebuilt_graphs/predefined_trg_mountain.pcd"
  isUpdate: false
  expandDist: 0.6
  robotSize: 0.3
  sampleNum: 7
  heightThreshold: 0.16
  collisionThreshold: 0.1
  updateCollisionThreshold: 0.5
  safetyFactor: 3.0
  goalTolerance: 0.8
```

### Parameter Descriptions

| Parameter                 | Description                                                  |
|---------------------------|--------------------------------------------------------------|
| `isVerbose`               | Flag to enable or disable verbose logging                    |
| `timer.graphRate`         | Rate of Graph finite state machine (Hz)                      |
| `timer.planningRate`      | Rate of Planning finite state machine (Hz)                   |
| `map.isPrebuiltMap`       | Flag to indicate whether a prebuilt map is used              |
| `map.prebuiltMapPath`     | Path to the prebuilt map file                                |
| `map.isVoxelize`          | Flag to indicate whether voxelization is applied to the map  |
| `map.voxelSize`           | Size of each voxel in the voxelized map (if applicable)      |
| `trg.isPrebuiltTRG`       | Flag to indicate whether a prebuilt TRG is used (TBU)        |
| `trg.prebuiltTRGPath`     | Path to the prebuilt TRG file (TBU)                          |
| `trg.isUpdate`            | Flag to indicate whether the TRG is updated during operation |
| `trg.expandDist`          | Distance used to expand the TRG                              |
| `trg.robotSize`           | Size of the robot used in the TRG                            |
| `trg.sampleNum`           | Number of samples to generate for the TRG                    |
| `trg.heightThreshold`     | Threshold value for height in the TRG                        |
| `trg.collisionThreshold`  | Threshold for collision detection in the TRG                 |
| `trg.updateCollisionThreshold` | Threshold for updating collision in the TRG             |
| `trg.safetyFactor`        | Safety factor applied during the planning process            |
| `trg.goalTolerance`       | Tolerance for goal reaching in the planning process          |

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
