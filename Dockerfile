FROM arm32v7/debian:buster

RUN rm -rf /var/lib/apt/lists/* \
    && apt-get clean \
    && apt-get update -o Acquire::CompressionTypes::Order::=gz \
    && apt-get update \
    && apt-get upgrade \
    && DEBIAN_FRONTEND=noninteractive apt-get install -qqy \
    python-dev \
    libxml2-dev \
    libxslt-dev \
    python3-dev \
    python3-numpy \
    python3-pyqt5 \
    python3-scipy \
    python3-setuptools \
    python3-tk \
    python3-venv \
    python3-virtualenv \
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
    tk-dev \
    libncurses5-dev \
    libncursesw5-dev \
    libreadline6-dev \
    libdb5.3-dev \
    libgdbm-dev \
    libsqlite3-dev \
    libbz2-dev \
    libexpat1-dev \
    liblzma-dev \
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
    tcl8.6 \
    tcl8.6-dev \
    tk8.6 \
    tk8.6-dev \
    virtualenv \
    wget \
    xvfb \
    zlib1g-dev \
    libcmocka0 \
    libcmocka-dev
COPY ./requirements.txt /root/requirements.txt
RUN virtualenv -p /usr/bin/python3 vpy3 \
    && . /vpy3/bin/activate \
    && /vpy3/bin/pip install --extra-index-url https://www.piwheels.org/simple -qqqU pip wheel setuptools \
    && /vpy3/bin/pip install --extra-index-url https://www.piwheels.org/simple -qqqr /root/requirements.txt
