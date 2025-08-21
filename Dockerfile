FROM ubuntu:22.04
LABEL maintainer="Sneha Sudhakaran <ssudhakaran@fit.edu>"

ENV DEBIAN_FRONTEND=noninteractive

# Install system and Python dependencies
RUN apt-get update && apt-get install -y \
    build-essential \
    binwalk \
    python3 \
    python3-pip \
    git \
    foremost \
    python3-dev \
    python3-bandit \
    python3-scapy \
    && rm -rf /var/lib/apt/lists/*

# Upgrade pip and setuptools
RUN pip3 install --upgrade pip setuptools wheel

# Default to interactive shell
CMD ["/bin/bash"]
