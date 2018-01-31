FROM ubuntu:xenial

RUN echo "deb http://ppa.launchpad.net/quamotion/ppa/ubuntu xenial main" > /etc/apt/sources.list.d/quamotion.list \
&& apt-key adv --keyserver keyserver.ubuntu.com --recv E25E7A74 \
&& apt-get update \
&& apt-get install -y curl apt-transport-https libunwind8 libicu55 libc++-dev zlib1g wget libcurl3 libgdiplus libc6-dev \
&& rm -rf /var/lib/apt/lists/*
