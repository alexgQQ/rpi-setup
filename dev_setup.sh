#!/bin/sh

apt-get update -yq
sudo apt-get install -yq python3 \
                         python3-dev \
                         python3-pip --no-install-recommends \
                         git
