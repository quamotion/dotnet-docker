FROM ubuntu:xenial

RUN apt-get update \
&& apt-get install -y curl apt-transport-https libc6-dev libgdiplus \
&& curl https://packages.microsoft.com/keys/microsoft.asc | gpg --dearmor > /etc/apt/trusted.gpg.d/microsoft.gpg \
&& echo "deb [arch=amd64] https://packages.microsoft.com/repos/microsoft-ubuntu-xenial-prod xenial main" > /etc/apt/sources.list.d/dotnetdev.list \
&& apt-get update \
&& apt-get install -y dotnet-runtime-2.0.5 \

# See https://medium.com/@pavel.agarkov/debugging-asp-net-core-app-running-in-kubernetes-minikube-from-visual-studio-2017-on-windows-6671ddc23d93
# for some additional instructions on how to connect to this container with Visual Studio

&& apt-get install -y zip \
&& curl -sSL https://aka.ms/getvsdbgsh | bash /dev/stdin -v vs2017u5 -l ~/vsdbg \
&& apt-get remove -y zip \

&& rm -rf /var/lib/apt/lists/*
