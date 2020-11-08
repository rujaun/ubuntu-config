#!/bin/bash

sudo apt install -y build-essential libpam0g-dev libxcb-xkb-dev libxcb1-dev \
					libxcb-keysyms1-dev libpango1.0-dev libxcb-util0-dev \
					libxcb-icccm4-dev libyajl-dev libstartup-notification0-dev \
					libxcb-randr0-dev libev-dev libxcb-cursor-dev libxcb-xinerama0-dev \
					libxkbcommon-dev libxkbcommon-x11-dev autoconf libxcb-xrm0 \
					libxcb-xrm-dev libxcb-shape0-dev automake

git clone https://www.github.com/Airblader/i3 i3-gaps
cd i3-gaps

autoreconf --force --install
rm -rf build/
mkdir -p build && cd build/
../configure --prefix=/usr --sysconfdir=/etc --disable-sanitizers
make
sudo make install
cd ..
sudo rm -r i3

sudo apt install i3status i3lock
sudo apt install rofi
sudo apt install lm-sensors