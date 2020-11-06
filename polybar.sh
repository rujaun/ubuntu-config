#!/bin/bash

cd ~/
cd ./de-sources
git clone --recursive https://github.com/polybar/polybar
cd polybar
mkdir build
cd build
cmake ..
make -j$(nproc)
sudo make install
cd ..
sudo rm -r polybar