FROM nvcr.io/nvidia/l4t-ml:r32.5.0-py3
RUN apt-get update && apt-get install -y software-properties-common 
RUN add-apt-repository ppa:jonathonf/ffmpeg-4
RUN apt-get update 
#install aiortc dependencies
RUN apt-get install -y \
    libavdevice-dev \
    libavfilter-dev \
    libopus-dev \
    libvpx-dev \
    libsrtp2-dev \
    pkg-config\
    python3-dev


# Install GStreamer-1.0 and related plugins
RUN apt-get install -y libgstreamer1.0-0 gstreamer1.0-plugins-base gstreamer1.0-plugins-good gstreamer1.0-plugins-bad gstreamer1.0-plugins-ugly gstreamer1.0-libav gstreamer1.0-doc gstreamer1.0-tools gstreamer1.0-x gstreamer1.0-alsa gstreamer1.0-gl gstreamer1.0-gtk3 gstreamer1.0-qt5 gstreamer1.0-pulseaudio

# Install RTSP server
RUN apt-get install -y libglib2.0-dev libgstrtspserver-1.0-dev gstreamer1.0-rtsp

RUN pip3 install --upgrade setuptools pip

RUN pip3 install aiohttp aiortc asyncio dataclasses
RUN pip3 uninstall -y cryptography
RUN pip3 install cryptography==38.0.0
WORKDIR /app
COPY ./app /app
CMD ["python3","/app/server.py"]