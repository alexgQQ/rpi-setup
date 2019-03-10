#!/bin/bash

##########################################################
#	Install Node base framework for Raspian 9 (Stretch)
#	Date: 06-16-2018
##########################################################

wget -q https://nodejs.org/dist/v8.11.3/node-v8.11.3-linux-armv7l.tar.xz
tar -xf node-v8.11.3-linux-armv7l.tar.xz
sudo rm node-v8.11.3-linux-armv7l.tar.xz
cd node-v8.11.3-linux-armv7l
sudo cp -R * /usr/local/
sudo rm -rf node-v8.11.3-linux-armv7l

sudo npm install gtop -g
