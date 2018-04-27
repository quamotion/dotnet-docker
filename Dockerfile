FROM ubuntu:bionic

RUN echo "deb http://ppa.launchpad.net/quamotion/ppa/ubuntu bionic main" > /etc/apt/sources.list.d/quamotion.list \
&& apt-key adv --keyserver keyserver.ubuntu.com --recv E25E7A74 \
&& apt-get update \
&& apt-get install -y curl apt-transport-https libc6-dev libgdiplus gnupg \
&& curl https://packages.microsoft.com/keys/microsoft.asc | gpg --dearmor > /etc/apt/trusted.gpg.d/microsoft.gpg \
&& echo "deb [arch=amd64] https://packages.microsoft.com/repos/microsoft-ubuntu-bionic-prod bionic main" > /etc/apt/sources.list.d/dotnetdev.list \
&& apt-get update \
&& apt-get install -y dotnet-runtime-2.1.0-preview2-26406-04 \
&& rm -rf /var/lib/apt/lists/*
