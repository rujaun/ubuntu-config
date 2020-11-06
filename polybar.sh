#!/bin/bash

#https://packages.debian.org/bullseye/python3-xcbgen

sudo apt install clang cmake libasound2 libasound2-data libpulse-dev libiw-dev libmpd-dev libmpdclient-dev openssl curl libcurl4-openssl-dev libxcb-composite0 libxcb-composite0-dev xcb-proto xcb libxcb-ewmh-dev python3-xcbgen libjsoncpp-dev

git clone --recursive https://github.com/polybar/polybar
cd polybar
mkdir build
./build.sh
#cd build
#cmake ..
#make -j$(nproc)
#sudo make install
#cd ..
#sudo rm -r polybar