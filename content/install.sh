#!/bin/sh

# Install Cloudreve
if [ -f /workdir/*.tar.gz ]; then
    tar -zxf /workdir/*.tar.gz -C /workdir
    rm -f /workdir/*.tar.gz
else
    VERSION="3.8.3"
    wget -qO - https://9ih.top/cloudreve_${VERSION}_linux_amd64.tar.gz | tar -zxf - -C /workdir
fi

# Install Aria2
wget -qO - https://github.com/P3TERX/Aria2-Pro-Core/releases/download/1.36.0_2021.08.22/aria2-1.36.0-static-linux-amd64.tar.gz | tar -zxf - -C /usr/bin
