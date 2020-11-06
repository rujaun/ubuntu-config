#!/bin/bash

sudo apt install build-essential libpam0g-dev libxcb-xkb-dev

git clone https://github.com/nullgemm/ly.git
cd ly
make github
make
sudo make install
sudo systemctl enable ly.service