#!/bin/bash

##########################################################
#	Install LED controller for rpi
#	Reference: https://github.com/jgarff/rpi_ws281x.git
#	Date: 06-30-2018
##########################################################

function install_rpi_ws281x {
	git clone https://github.com/jgarff/rpi_ws281x.git
	cd rpi_ws281x
	scons
	cd python
	sudo python setup.py install
    #  Add line to /etc/modprobe.d/snd-blacklist.conf
    #   blacklist snd_bcm2835

install_rpi_ws281x