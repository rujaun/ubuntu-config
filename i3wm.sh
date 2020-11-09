#!/bin/bash

sudo apt install -y build-essential libpam0g-dev libxcb-xkb-dev libxcb1-dev \
					libxcb-keysyms1-dev libpango1.0-dev libxcb-util0-dev \
					libxcb-icccm4-dev libyajl-dev libstartup-notification0-dev \
					libxcb-randr0-dev libev-dev libxcb-cursor-dev libxcb-xinerama0-dev \
					libxkbcommon-dev libxkbcommon-x11-dev autoconf libxcb-xrm0 \
					libxcb-xrm-dev libxcb-shape0-dev automake scrot make pkg-config \
					libcairo2-dev libfontconfig1-dev libxcb-composite0-dev libx11-xcb-dev \
					libxcb-image0-dev libxcb-util-dev libjpeg-dev


git clone https://www.github.com/Airblader/i3 i3-gaps
cd i3-gaps

autoreconf --force --install
rm -rf build/
mkdir -p build && cd build/
../configure --prefix=/usr --sysconfdir=/etc --disable-sanitizers
make
sudo make install
cd ..
sudo rm -r i3-gaps


sudo apt install i3lock-fancy --no-install-recommends --no-install-suggests
sudo apt install i3blocks --no-install-recommends --no-install-suggests
sudo apt install rofi --no-install-recommends --no-install-suggests