#!/bin/bash

##########################################################
#	Install base dependencies
#	Date: 06-16-2018
##########################################################

function install_base_dep {
	sudo apt-get -yq install xterm git automake libtool python-numpy python-scipy python-pyaudio build-essential python-dev scons swig
}

install_base_dep