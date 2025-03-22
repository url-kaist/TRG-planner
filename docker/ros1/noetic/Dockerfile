FROM ros:noetic-ros-base-focal

# Set the working directory
WORKDIR /home

# Set environment variables for non-interactive installation
ENV DEBIAN_FRONTEND=noninteractive
ENV PATH="/opt/conda/bin:$PATH"

# Install dependencies and ROS Noetic
RUN apt-get update && apt-get install -y \
    lsb-release \
    gnupg \
    build-essential \
    curl \
    wget \
    python3 \
    python3-pip \
    bzip2 \
    python3-catkin-tools \
    && rm -rf /var/lib/apt/lists/* \
    && echo "deb http://packages.ros.org/ros/ubuntu $(lsb_release -sc) main" > /etc/apt/sources.list.d/ros-latest.list \
    && apt-key adv --keyserver 'hkp://keyserver.ubuntu.com:80' --recv-key C1CF6E31E6BADE8868B172B4F42ED6FBAB17C654 \
    && apt-get update && apt-get install -y ros-noetic-desktop-full \
    && rm -rf /var/lib/apt/lists/* \
    && echo "source /opt/ros/noetic/setup.bash" >> /root/.bashrc

# Install Miniconda
RUN wget https://repo.anaconda.com/miniconda/Miniconda3-latest-Linux-x86_64.sh -O miniconda.sh \
    && bash miniconda.sh -b -p /opt/conda \
    && rm miniconda.sh \
    && conda init \
    && conda create -n trg-env python=3.8 -y

# Switch to using Conda env for subsequent RUNs
SHELL ["conda", "run", "-n", "trg-env", "/bin/bash", "-c"]

# Install pybind dependencies
RUN pip install --upgrade pip setuptools wheel scikit-build-core ninja cmake build

# Install git
RUN apt-get update && \
    apt-get install -y git && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*

# Install catkin tools
RUN apt-get update && apt-get install -y python3-catkin-tools && rm -rf /var/lib/apt/lists/*

COPY entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh

# Inject conda activation into .bashrc
RUN echo 'source /opt/conda/etc/profile.d/conda.sh && conda activate trg-env' >> /root/.bashrc
ENTRYPOINT ["/entrypoint.sh"]
