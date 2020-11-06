#!/bin/bash

sudo apt install clang cmake libasound2 libasound2-data libpulse-dev libiw-dev libmpd-dev openssl curl

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