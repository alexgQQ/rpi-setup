#!/bin/sh

sudo apt-get update -yq
sudo apt-get install -yq python3 \
                         python3-dev \
                         python3-pip --no-install-recommends \
                         git \
                         build-essential \
                         scons \
                         swig \
                         xterm \
                         automake \
                         libtool

sh scripts/zsh.sh

sh scripts/node.sh

sh scripts/docker.sh

sh scripts/lcd.sh