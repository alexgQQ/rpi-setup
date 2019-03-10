#!/bin/bash

##########################################################
#	Install Mopidy
#	REF: https://docs.mopidy.com/en/latest/installation/debian/#debian-install
#	Date: 06-17-2018
##########################################################

function install_mopidy {
	wget -q -O - https://apt.mopidy.com/mopidy.gpg | sudo apt-key add -
	sudo wget -q -O /etc/apt/sources.list.d/mopidy.list https://apt.mopidy.com/stretch.list
	sudo apt-get update
	sudo apt-get install mopidy
	sudo apt-get install mopidy-spotify
}

install_mopidy