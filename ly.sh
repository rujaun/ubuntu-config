#!/bin/bash

cd ~/
cd ./de-sources
git clone https://github.com/nullgemm/ly.git
cd ly
make github
make
sudo make install
sudo systemctl enable ly.service