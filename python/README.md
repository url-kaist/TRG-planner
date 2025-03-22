<div align="center">
  <h1 align="center">TRG-planner<br></h1>
  <a href="https://github.com/url-kaist/TRG-planner"><img src="https://img.shields.io/badge/-C++-blue?logo=cplusplus" /></a>
  <a href="https://github.com/url-kaist/TRG-planner"><img src="https://img.shields.io/badge/Python-3670A0?logo=python&logoColor=ffdd54" /></a>
  <a href="https://github.com/url-kaist/TRG-planner"><img src="https://img.shields.io/badge/ROS1-Noetic-blue" /></a>
  <a href="https://github.com/url-kaist/TRG-planner"><img src="https://img.shields.io/badge/ROS2-Humble-blue" /></a>
  <a href="https://github.com/url-kaist/TRG-planner"><img src="https://img.shields.io/badge/Linux-FCC624?logo=linux&logoColor=black" /></a>
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

# Py-TRG-planner

<!-- This repository provides a ROS-based pipeline for TRG-planner.
It allows users to build the autonomous navigation framework, integrating with other algorithms such as odometry and terrain mapping. -->

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

## ⚙️ How To Build

The prerequisites for Pybind11 are just the minimum requirements as follws:

```commandline
pip3 install --upgrade pip setuptools wheel scikit-build-core ninja cmake build
```

And then, run the following command:

```commandline
cd ${MAIN_DIR_OF_TRG_PLANNER}/python
pip3 install -e .
```

## 🚀 How To Run

### Example A. Random path planning visualization

Run `examples/run_trg_planner.py` following template:

```commandline
python3 python/examples/run_trg_planner.py --map indoor
```

or simply

```bash
trg-py --map indoor
```

#### Result

<details>
  <summary><strong>Indoor Environment</a></strong></summary>

![Image](https://github.com/user-attachments/assets/6ab45f21-058d-4da5-8b3c-c55406156df6)
![Image](https://github.com/user-attachments/assets/6bdf5f52-a9b6-4c3c-ab94-00c45c4be38f)
![Image](https://github.com/user-attachments/assets/478e5ac0-e5a1-44f1-8cd4-1cea0f0ab324)
![Image](https://github.com/user-attachments/assets/8ad9fc27-d63a-4c3b-9a95-457a7afdf042)
![Image](https://github.com/user-attachments/assets/ec82d7d8-f892-4a92-9de2-03b34aa25f5e)

</details>

<details>
  <summary><strong>Mountain Environment</a></strong></summary>

![Image](https://github.com/user-attachments/assets/d59a6ec3-970b-4fe9-82d6-ef804c1c61de)
![Image](https://github.com/user-attachments/assets/ca37a86d-4ccd-4949-b09b-9edfd6dc2895)
![Image](https://github.com/user-attachments/assets/eede22fc-cc22-44b5-bc40-fc8c34bcdd92)
![Image](https://github.com/user-attachments/assets/d76e764c-1236-4e2f-9624-ab1cdf9ce1a8)
![Image](https://github.com/user-attachments/assets/b65a8312-525a-4bd1-8df3-7951e2af35f3)

</details>

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
