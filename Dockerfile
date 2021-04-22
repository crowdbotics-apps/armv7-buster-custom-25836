FROM arm32v7/debian:buster

COPY ./requirements.txt /root/requirements.txt
RUN apt-get update -y -q
RUN apt-get install -y -q python-dev python3-dev python3-venv python3-setuptools \
    libatlas-base-dev libcurl4-openssl-dev libssl-dev \
    libjack-jackd2-dev portaudio19-dev \
    libsox-fmt-mp3 pulseaudio \
    libjbig0 liblcms2-2 libopenjp2-7 libtiff5 libwebp6 libwebpdemux2 libwebpmux3 \
    build-essential \
    libjpeg-dev zlib1g-dev \
    libsdl-image1.2-dev libsdl-mixer1.2-dev libsdl-ttf2.0-dev libsdl1.2-dev \
    libsmpeg-dev subversion libportmidi-dev ffmpeg libswscale-dev libavformat-dev libavcodec-dev libfreetype6-dev
RUN python3 -m venv venv3 && venv3/bin/python -m pip install wheel && venv3/bin/python -m pip install -r /root/requirements.txt
