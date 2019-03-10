#!/bin/bash

##########################################################
#	Install CAVA
#	REF: https://github.com/karlstav/cava
#	Date: 06-17-2018
##########################################################

function install_cava {
	# Install deps
	sudo apt-get -y install libfftw3-dev libasound2-dev libncursesw5-dev libpulse-dev
	git clone https://github.com/karlstav/cava
	cd cava
	./autogen.sh
	./configure
	make install
}

install_cava