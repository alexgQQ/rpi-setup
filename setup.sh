#!/bin/sh

apt-get update -yq
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

source './scripts/zsh.sh'

source './scripts/node.sh'

source './scripts/docker.sh'

source './scripts/lcd.sh'