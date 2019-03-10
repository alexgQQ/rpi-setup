## RPI Image Deployment

1. Get Raspian image and write to the sd card.
 * Headless/light raspian images will not support lcd touch screen.
 * https://www.raspberrypi.org/downloads/raspbian/

2. Add `wpa_supplicant.conf` and `ssh` file to new `boot` volume.
This will configure the wifi network automatically and enable ssh.
CMD: `cp wpa_supplicant.conf /Volumes/boot && touch /Volumes/boot/ssh`

3. Remove host ssh connection info from `~/.ssh/known_hosts`

4. Boot up and log in with `ssh pi@network_location`