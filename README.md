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

<details>
  <summary><strong>Overall pipeline</a></strong></summary>

<img width="548" alt="Image" src="https://github.com/user-attachments/assets/34639bbb-a3bb-4a4f-b2c4-8fe978462d44" />

#### 📋 TO DO List

- \[ \] GUI interface
- \[ \] Prebuilt TRG save & load
- \[ \] Setup Docker images
- \[ \] Add workflows "Publish to PyPI.org"

</details>

## 📦 Installation

## 🐳 Docker

We provide a docker installation script so that you can directly install TRG in any machine. Simply do the following, and you're good to go to install TRG anywher!

```bash
bash docker/build.sh
bash docker/run_compose.sh
```

### 💻 C++ (Essential)

Run the command below.

```commandline
git clone https://github.com/url-kaist/TRG-planner.git
cd TRG-planner
sudo make deps # This installs required dependencies
sudo make cppinstall
```

#### 💡 Example codes

We provide c++ examples. Please visit our [**cpp/examples**](https://github.com/url-kaist/TRG-planner/tree/main/cpp/examples) directory and follow the instructions.

______________________________________________________________________

### 🐍 Python

The prerequisites for Pybind11 are just the minimum requirements as follows:

```
pip3 install --upgrade pip setuptools wheel scikit-build-core ninja cmake build
```

And then, run the following command:

```
pip3 install -e python/
```

#### 💡 Example codes

We provide python examples. Please visit our [**python**](https://github.com/url-kaist/TRG-planner/tree/main/python) directory and follow the instructions.

______________________________________________________________________

### 🤖 ROS

We provide a ROS pipeline for robotics applications, compatible with various odometry and mapping algorithms.

The tested versions are `ROS1 Noetic` and `ROS2 Humble`.

For more details, please visit our [**pipelines**](https://github.com/url-kaist/TRG-planner/tree/main/pipelines) directory and follow the instructions.

______________________________________________________________________

## 📝 Citation

If you use this package for any academic work, please cite our original [paper](https://ieeexplore.ieee.org/document/10819646), or [arXiv](https://arxiv.org/abs/2501.01806)

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

## 🤝 Contributing

We are excited to see how TRG-planner grows, thanks to contributions from the community.
We would love to see your face on the list below, just open a **Pull Request!**

<a href="https://github.com/url-kaist/TRG-planner/graphs/contributors">
  <img src="https://contrib.rocks/image?repo=url-kaist/TRG-planner" />
</a>

______________________________________________________________________

## 🙏 Acknowledgements

We would like to express our gratitude to team [DreamSTEP](https://www.youtube.com/watch?v=d7HlqAP4l0c) for their invaluable help in developing this project for the IEEE QRC competition. It was completed and tested with their support. We are also grateful to the authors of the open-sourced [kdtree](https://github.com/jtsiomb/kdtree), which was modified as the data structure for this project. Additionally, we would like to thank [Zhang Lab](https://www.ri.cmu.edu/robotics-groups/zhang-lab/) for providing an [excellent environment](https://github.com/HongbiaoZ/autonomous_exploration_development_environment), some of which we utilized during the development of this project. A special thanks goes to my respected research mentor, [Hyungtae Lim](https://limhyungtae.github.io/aboutme/), for his invaluable guidance and for inspiring the open-sourcing style of this project. His latest work, [KISS-Matcher](https://github.com/MIT-SPARK/KISS-Matcher), emphasizing modern C++ and CMake practices, has been a great reference and influence on our source-available pipeline.

Their contributions to the community have greatly enhanced our project, and we genuinely appreciate their support. We hope this project will also make a meaningful contribution to the community.

______________________________________________________________________

## 📜 License

The TRG-planner code provided in this repository is released under the [Apache-2.0 with Commons Clause license](./LICENSE).
