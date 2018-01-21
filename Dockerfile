FROM ubuntu:xenial

RUN apt-get update \
&& apt-get install -y curl apt-transport-https libc6-dev libgdiplus \
&& curl https://dotnetcli.blob.core.windows.net/dotnet/Runtime/master/dotnet-runtime-deps-latest-ubuntu.16.04-x64.deb -o dotnet-runtime-deps.deb \
&& curl https://dotnetcli.blob.core.windows.net/dotnet/Runtime/master/dotnet-host-latest-ubuntu.16.04-x64.deb -o dotnet-host.deb \
&& curl https://dotnetcli.blob.core.windows.net/dotnet/Runtime/master/dotnet-hostfxr-latest-ubuntu.16.04-x64.deb -o dotnet-hostfxr.deb \
&& curl https://dotnetcli.blob.core.windows.net/dotnet/Runtime/master/dotnet-runtime-latest-ubuntu.16.04-x64.deb -o dotnet-runtime.deb \
&& apt install -y ./dotnet-host.deb \
&& apt install -y ./dotnet-hostfxr.deb \
&& apt install -y ./dotnet-runtime.deb \
&& rm -rf /var/lib/apt/lists/*
