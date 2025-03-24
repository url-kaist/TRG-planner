FROM osrf/ros:humble-desktop-full-jammy

# Set the working directory
WORKDIR /home

# Set environment variables for non-interactive installation
ENV DEBIAN_FRONTEND=noninteractive
ENV PATH="/opt/conda/bin:$PATH"

# Install system dependencies and colcon tools
RUN apt-get update && apt-get install -y \
    lsb-release \
    gnupg \
    build-essential \
    curl \
    wget \
    python3-colcon-common-extensions \
    python3-wheel \
    python3-rosdep \
    python3-vcstool \
    python3-pip \
    && rm -rf /var/lib/apt/lists/*

# Install Miniconda
RUN wget https://repo.anaconda.com/miniconda/Miniconda3-latest-Linux-x86_64.sh -O miniconda.sh \
    && bash miniconda.sh -b -p /opt/conda \
    && rm miniconda.sh \
    && conda init \
    && conda create -n trg-env python=3.8 -y

# Activate Conda for future RUNs
SHELL ["conda", "run", "-n", "trg-env", "/bin/bash", "-c"]

# Install pybind and Python dependencies
RUN pip install --upgrade pip empy setuptools wheel \
    scikit-build-core ninja cmake build numpy open3d catkin_pkg

# Install git
RUN apt-get update && \
    apt-get install -y git && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*

COPY entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh

# Inject conda activation into .bashrc
RUN echo 'source /opt/conda/etc/profile.d/conda.sh && conda activate trg-env' >> /root/.bashrc
RUN echo 'source /opt/ros/humble/setup.bash' >> /root/.bashrc
ENTRYPOINT ["/entrypoint.sh"]
