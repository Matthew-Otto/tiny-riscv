FROM ubuntu:20.04

ENV DEBIAN_FRONTEND=noninteractive

# Install base dependencies
RUN apt-get update && apt-get install -y \
    make \
    git \
    curl \
    python3 \
    python3-pip \
    python3-setuptools \
    python3-dev \
    build-essential \
    verilator \
    pkg-config \
    libffi-dev \
    libevent-dev \
    && rm -rf /var/lib/apt/lists/*

# Upgrade pip
RUN pip3 install --upgrade pip

# Set python and pip aliases
RUN ln -s /usr/bin/python3 /usr/bin/python && \
    ln -s /usr/bin/pip3 /usr/bin/pip
# Install cocotb
RUN pip install cocotb