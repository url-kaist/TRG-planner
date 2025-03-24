FROM osrf/ros:noetic-desktop-full-focal

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
    && rm -rf /var/lib/apt/lists/*

# Install TRG ROS1 dependencies
RUN apt-get update && \
    apt-get install ros-noetic-grid-map -y

# Install Miniconda
RUN wget https://repo.anaconda.com/miniconda/Miniconda3-latest-Linux-x86_64.sh -O miniconda.sh \
    && bash miniconda.sh -b -p /opt/conda \
    && rm miniconda.sh \
    && conda init \
    && conda create -n trg-env python=3.8 -y

# Switch to using Conda env for subsequent RUNs
SHELL ["conda", "run", "-n", "trg-env", "/bin/bash", "-c"]

# Install pybind dependencies
RUN pip install --upgrade pip empy catkin_pkg setuptools wheel scikit-build-core ninja cmake build numpy open3d

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
RUN echo 'source /opt/ros/noetic/setup.bash' >> /root/.bashrc
ENTRYPOINT ["/entrypoint.sh"]
