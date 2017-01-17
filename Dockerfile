FROM ubuntu:16.04

RUN apt-get update && apt-get -y install git build-essential yasm gcc-4.2 libgomp1 libsdl2-dev libsdl2-ttf-dev yasm \
                        libmp3lame-dev libopus-dev libogg-dev pkg-config libvorbis-dev libtheora-dev libvpx-dev \
						libx264-dev libxvidcore-dev cmake patch make cmake g++ \
						libfreetype6-dev \
						libgl1-mesa-dev libglu1-mesa-dev \
						libpulse-dev libasound2-dev libxtst-dev libxext-dev

						
#RUN git clone https://github.com/ua-i2cat/gaminganywhere.git -b lhe_integration
COPY . /gaminganywhere/
WORKDIR /gaminganywhere/deps.src
RUN git clone https://github.com/ua-i2cat/liveMediaLHEPayloader.git -b lhe_integration live
RUN git clone https://github.com/magonzalezc/LHE.git -b lhe_develop ffmpeg
# RUN make
# WORKDIR /gaminganywhere/ga
# RUN make all
# RUN make install
