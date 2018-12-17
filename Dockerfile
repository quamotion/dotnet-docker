FROM ubuntu:bionic

ARG dotnet_version=2.2.0-1

RUN apt-get update \
&& apt-get install -y curl apt-transport-https libc6-dev gnupg \
&& echo "deb http://ppa.launchpad.net/quamotion/ppa/ubuntu bionic main" > /etc/apt/sources.list.d/quamotion.list \
&& apt-key adv --keyserver keyserver.ubuntu.com --recv E25E7A74 \
&& curl https://packages.microsoft.com/keys/microsoft.asc | gpg --dearmor > /etc/apt/trusted.gpg.d/microsoft.gpg \
&& echo "deb [arch=amd64] https://packages.microsoft.com/repos/microsoft-ubuntu-bionic-prod bionic main" > /etc/apt/sources.list.d/dotnetdev.list \
&& apt-get update \
&& apt-get install -y \
  libgdiplus \
  dotnet-host=$dotnet_version \
  dotnet-hostfxr-2.2=$dotnet_version \
  dotnet-runtime-2.2=$dotnet_version \
  dotnet-runtime-deps-2.2=$dotnet_version \
  dotnet-runtime-2.2=$dotnet_version \
&& rm -rf /var/lib/apt/lists/*
