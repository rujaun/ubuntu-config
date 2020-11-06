#!/bin/bash

sudo apt install clang cmake alsa-lib libpulse-dev libiw-dev libmpd-dev openssl libcurl14-openssl-dev

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