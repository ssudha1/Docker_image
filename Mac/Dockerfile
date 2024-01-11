# Use Kali Linux as the base image
FROM kalilinux/kali-rolling

LABEL maintainer="Rusheel Raj Panakadan <rpanakadan2022@my.fit.edu>"

# Update packages and install necessary tools
RUN apt-get update && \
    apt-get install -y kali-linux-core && \
    rm -rf /var/lib/apt/lists/*

# Set the timezone to US Eastern Time
RUN ln -fs /usr/share/zoneinfo/America/New_York /etc/localtime && \
    dpkg-reconfigure --frontend noninteractive tzdata

# Installing command-line forensics tools
RUN apt-get update && \
    apt-get install -y foremost binwalk steghide hexedit ghex hashcat \
    john exiftool ffmpeg nano pngcheck python3-dev python3-bandit \
    python3-binwalk python3-pip python3-scapy radare2 sleuthkit \
    forensics-all && rm -rf /var/lib/apt/lists/*

# Installing EmlAnalyzer - Email Forensics & Volatility3 - Memory Forensics
RUN pip3 install eml-analyzer volatility3

# Installing Stegsolve, jsteg, and slink - Steganography
RUN cd /opt && \
    wget http://www.caesum.com/handbook/Stegsolve.jar -O stegsolve.jar && \
    chmod +x stegsolve.jar && \
    mkdir bin && \
    mv stegsolve.jar bin/

RUN wget -O /usr/local/bin/jsteg \
   https://github.com/lukechampine/jsteg/releases/download/v0.3.0/jsteg-linux-amd64 && \
   chmod +x /usr/local/bin/jsteg

RUN wget -O /usr/local/bin/slink \
   https://github.com/lukechampine/jsteg/releases/download/v0.3.0/slink-linux-amd64 && \
   chmod +x /usr/local/bin/slink

# Set the default command to run when the container starts
CMD ["/bin/bash"]
