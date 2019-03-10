#!/bin/sh

curl -fsSL get.docker.com -o get-docker.sh
sh get-docker.sh
sudo docker run hello-world
