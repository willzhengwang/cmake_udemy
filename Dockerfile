# Use Ubuntu 22.04 as the base image
FROM ubuntu:22.04

# Set non-interactive mode for apt-get
ENV DEBIAN_FRONTEND=noninteractive

# Update and upgrade the base image
RUN apt-get update && apt-get upgrade -y

# Install mandatory packages
RUN apt-get install -y \
    gcc g++ gdb \
    make cmake \
    doxygen \
    python3 python3-pip

# Install optional packages
RUN apt-get install -y \
    lcov gcovr \
    ccache \
    cppcheck \
    llvm clang-format clang-tidy \
    curl zip unzip tar \
    graphviz

# Install commonly used Linux commands
RUN apt-get install -y \
    vim \
    coreutils \
    less \
    nano \
    net-tools \
    iputils-ping \
    wget \
    tree \
    htop

# Clean up to reduce image size
RUN apt-get clean && rm -rf /var/lib/apt/lists/*

# Set the default working directory inside the container
WORKDIR /workspace

# Set Python3 as the default python
RUN ln -s /usr/bin/python3 /usr/bin/python

# Provide a default command for the container
CMD ["bash"]
