FROM ubuntu:xenial

RUN apt-get update \
&& apt-get install -y curl apt-transport-https libc6-dev libgdiplus \
&& wget https://dotnetcli.blob.core.windows.net/dotnet/Runtime/master/dotnet-runtime-deps-latest-ubuntu.16.04-x64.deb -o dotnet-runtime-deps.deb \
&& wget https://dotnetcli.blob.core.windows.net/dotnet/Runtime/master/dotnet-host-latest-ubuntu.16.04-x64.deb -o dotnet-host.deb \
&& wget https://dotnetcli.blob.core.windows.net/dotnet/Runtime/master/dotnet-hostfxr-latest-ubuntu.16.04-x64.deb -o dotnet-hostfxr.deb \
&& wget https://dotnetcli.blob.core.windows.net/dotnet/Runtime/master/dotnet-runtime-latest-ubuntu.16.04-x64.deb -o dotnet-runtime.deb \
&& dpkg -i dotnet-host.deb \
&& dpkg -i dotnet-hostfxr.deb \
&& dpkg -i dotnet-runtime.deb \
&& rm -rf /var/lib/apt/lists/*
