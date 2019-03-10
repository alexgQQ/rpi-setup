#!/bin/sh

curl -fsSL get.docker.com -o get-docker.sh
source 'get-docker.sh'
sudo docker run hello-world
