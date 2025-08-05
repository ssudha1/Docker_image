FROM ubuntu:22.04
LABEL maintainer="Sneha Sudhakaran <ssudhakaran@my.fit.edu>"
ENV DEBIAN_FRONTEND=noninteractive
# Install system and Python dependencies
RUN apt-get update && apt-get install -y \
    build-essential \
    binwalk \
    python3 \
    python3-pip \
    git \
    unzip \
    wget \
    curl \
    libssl-dev \
    libffi-dev \
    libmagic-dev \
    foremost \
    steghide \
    hexedit \
    hashcat \
    john \
    exiftool \
    ffmpeg \
    nano \
    pngcheck \
    python3-dev \
    python3-bandit \
    python3-scapy \
    sleuthkit \
    && rm -rf /var/lib/apt/lists/*

# Upgrade pip and setuptools
RUN pip3 install --upgrade pip setuptools wheel

# Install Python-based forensic tools
RUN pip3 install python-magic
RUN pip3 install eml-analyzer==1.1.0
RUN pip3 install git+https://github.com/volatilityfoundation/volatility3.git

# Install Stegsolve
RUN mkdir -p /opt/bin && \
    wget -O /opt/bin/stegsolve.jar http://www.caesum.com/handbook/Stegsolve.jar && \
    chmod +x /opt/bin/stegsolve.jar

# Install jsteg
RUN wget -O /usr/local/bin/jsteg https://github.com/lukechampine/jsteg/releases/download/v0.3.0/jsteg-linux-amd64 && \
    chmod +x /usr/local/bin/jsteg

# Install slink
RUN wget -O /usr/local/bin/slink https://github.com/lukechampine/jsteg/releases/download/v0.3.0/slink-linux-amd64 && \
    chmod +x /usr/local/bin/slink

# Default shell
CMD ["/bin/bash"]



