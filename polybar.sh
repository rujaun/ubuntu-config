#!/bin/bash

sudo apt install clang cmake alsa0lib libpulse-dev libiw-dev libmpd-dev libcurl-dev

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