FROM ubuntu:xenial

ARG dotnet_version=2.1.4-1

RUN apt-get update \
&& apt-get install -y curl apt-transport-https libc6-dev libgdiplus \
&& curl https://packages.microsoft.com/keys/microsoft.asc | gpg --dearmor > /etc/apt/trusted.gpg.d/microsoft.gpg \
&& echo "deb [arch=amd64] https://packages.microsoft.com/repos/microsoft-ubuntu-xenial-prod xenial main" > /etc/apt/sources.list.d/dotnetdev.list \
&& apt-get update \
&& apt-get install -y \
  dotnet-host=$dotnet_version \
  dotnet-hostfxr-2.1=$dotnet_version \
  dotnet-runtime-2.1=$dotnet_version \
  dotnet-runtime-deps-2.1=$dotnet_version \
  dotnet-runtime-2.1=$dotnet_version \
&& rm -rf /var/lib/apt/lists/*
