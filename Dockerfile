FROM ubuntu:xenial

RUN apt-get update \
&& apt-get install -y curl apt-transport-https \
&& curl https://packages.microsoft.com/keys/microsoft.asc | gpg --dearmor > /etc/apt/trusted.gpg.d/microsoft.gpg \
&& echo "deb [arch=amd64] https://packages.microsoft.com/repos/microsoft-ubuntu-xenial-prod xenial main" > /etc/apt/sources.list.d/dotnetdev.list \
&& apt-get update \
&& apt-get install -y dotnet-runtime=2.0.4 \
&& rm -rf /var/lib/apt/lists/*
