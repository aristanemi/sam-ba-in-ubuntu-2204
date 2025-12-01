FROM ubuntu:22.04

ENV DEBIAN_FRONTEND=noninteractive

# Install all dependencies SAM-BA requires
RUN apt-get update

RUN apt-get install -y \
    libgl1

RUN apt-get install -y \
    libxcb1 \
    libxcb-icccm4 \
    libxcb-image0 \
    libxcb-keysyms1 \
    libxcb-render-util0 \
    libxcb-xinerama0 \
    libxcb-xkb1

RUN apt-get install -y \
    libxkbcommon-x11-0 \
    libxkbcommon0 \
    libfontconfig1 \
    libdbus-1-3 \
    libfreetype6

RUN apt-get install -y \
    libx11-xcb1 \
    libxcb-render0 \
    libxcb-shape0 \
    libxcb-shm0 \
    libudev1 \
    strace \
    tio

RUN apt-get install -y \
    libusb-1.0-0 \
    usbutils \
    libglu1-mesa \
    libxrender1 \
    libxext6

RUN apt-get update
RUN apt-get install -y \
    libglib2.0-0 libglib2.0-bin libglib2.0-dev

RUN apt-get install -y qtwayland5
RUN apt-get install -y udev
RUN rm -rf /var/lib/apt/lists/*

# Create directory to copy SAM-BA into
RUN mkdir -p /opt/samba

# Copy the SAM-BA extracted folder (sam-ba_v3.x.x-linux_x86_64)
ADD --unpack=true sam-ba_v3.9.2-linux_x86_64-22.04.tar.gz /opt/samba/

WORKDIR /opt/samba/sam-ba_v3.9.2


