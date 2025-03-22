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

# TRG-planner Example codes

We provide C++ examples for TRG-planner.
Unfortunately, we have not yet adapted any visualization tools for C++ at this time. Feel free to add your own great examples!

## 📦 Prerequisites

Make sure to install TRG-planner first:

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

## ⚙️ How To Build

After install core, you should build example codes

```commandline
cd cpp/examples/
./build_example.sh
```

If you got some errors, please manually build:

```commandline
cd cpp/examples/
mkdir build && cd build
cmake .. -DCMAKE_BUILD_TYPE=Release
make -j 48
```

## 🚀 How to Run

### Example A. TRG initailization time test

```commandline
./build/run_trg_planner {map_config_name}
./build/run_trg_planner indoor
```

**Result**

![Image](https://github.com/user-attachments/assets/1a90beb0-08b7-4187-b45d-3d5c6fe32b22)

### Example B. TBU

______________________________________________________________________

## 🛠 Configuration

Please visit our [**Map configuration details**](https://github.com/url-kaist/TRG-planner/tree/main/config).

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
