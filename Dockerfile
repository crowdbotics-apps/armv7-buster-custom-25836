FROM arm32v7/debian:oldstable

RUN rm -rf /var/lib/apt/lists/*
RUN apt-get clean
RUN apt-get update -o Acquire::CompressionTypes::Order::=gz
RUN apt-get update && apt-get upgrade
RUN DEBIAN_FRONTEND=noninteractive apt-get install -y -q --fix-missing \
    python-dev \
    python3-dev \
    python3-numpy \
    python3-pyqt5 \
    python3-scipy \
    python3-setuptools \
    python3-tk \
    python3-venv \
    libatlas-base-dev \
    libcurl4-openssl-dev \
    libssl-dev \
    libjack-jackd2-dev \
    portaudio19-dev \
    libsox-fmt-mp3 \
    pulseaudio \
    libjbig0 \
    liblcms2-2 \
    libopenjp2-7 \
    libffi-dev \
    libfreetype6-dev \
    libfribidi-dev \
    libharfbuzz-dev \
    libjpeg-turbo-progs \
    libjpeg62-turbo-dev \
    liblcms2-dev \
    libopenjp2-7-dev \
    libtiff5 \
    libtiff5-dev \
    libwebp-dev \
    libwebp6 \
    libwebpdemux2 \
    libwebpmux3 \
    build-essential \
    libjpeg-dev \
    zlib1g-dev \
    libsdl-image1.2-dev \
    libsdl-mixer1.2-dev \
    libsdl-ttf2.0-dev \
    libsdl1.2-dev \
    libsmpeg-dev \
    subversion \
    libportmidi-dev \
    ffmpeg \
    libswscale-dev \
    libavformat-dev \
    libavcodec-dev \
    libfreetype6-dev \
    libatlas-base-dev \
    gfortran \
    zip \
    gzip \
    tar \
    cmake \
    ghostscript \
    git \
    netpbm \
    sudo \
    tcl8.6-dev \
    tk8.6-dev \
    virtualenv \
    wget \
    xvfb \
    zlib1g-dev
COPY ./requirements.txt /root/requirements.txt
RUN python3 -m venv venv3 && venv3/bin/python -m pip install --upgrade pip wheel setuptools && venv3/bin/python -m pip install -r /root/requirements.txt
