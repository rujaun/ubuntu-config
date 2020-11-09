#!/bin/bash

sudo apt install -y vim htop network-manager neofetch arandr pulseaudio pulseaudio-utils \
					playerctl lm-sensors xbacklight lxappearance gnome-themes-standard \
					breeze qt5ct arc-theme bleachbit acpi

sudo apt install gnome-keyring

sudo apt install -y nautilus --no-install-recommends --no-install-suggests
sudo apt install -y firefox --no-install-recommends --no-install-suggests

curl -sS https://download.spotify.com/debian/pubkey_0D811D58.gpg | sudo apt-key add -
echo "deb http://repository.spotify.com stable non-free" | sudo tee /etc/apt/sources.list.d/spotify.list
sudo apt-get update && sudo apt-get install spotify-client
