#!/bin/bash

sudo systemctl disable display-manager.service
sudo systemctl disable gdm3.service

cd ~/
cd ./de-sources
git clone https://github.com/nullgemm/ly.git
cd ly
make github
make
sudo make install
sudo systemctl enable ly.service