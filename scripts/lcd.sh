#!/bin/sh

##########################################################
#	Install LCDshow library for 3.5 inch touch screen
#	https://www.amazon.com/gp/product/B01IGBDT02/ref=oh_aui_detailpage_o04_s00?ie=UTF8&psc=1
#	Date: 03-10-2019
##########################################################

cd ~

case "$1" in
    install)
        # REF: https://github.com/goodtft/LCD-show/wiki
        git clone https://github.com/goodtft/LCD-show.git
        chmod -R 755 LCD-show
        cd LCD-show
        sudo ./LCD35-show
        echo '# Set DISPLAY to use GPIO 3.5 inch display' >> /home/pi/.profile
        echo 'export DISPLAY=:0.0' >> /home/pi/.profile
        ;;
    calibrate)
        # REF: https://github.com/goodtft/LCD-show/wiki/How-to-calibrate-the-touch-screen
        cd LCD-show
        sudo dpkg -i -B xinput-calibrator_0.7.5-1_armhf.deb
        DISPLAY=:0.0 xinput_calibrator
        ;;
    *) # Catch unsupported args
        echo "Error: Unsupported flag $1"
        ;;
esac
