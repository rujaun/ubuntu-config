#!/bin/bash

sudo apt install acpi-call-dkms
sudo add-apt-repository ppa:linrunner/tlp
sudo apt update
sudo apt install tlp
sudo tlp start
tlp-stat -s

sudo echo "START_CHARGE_THRESH_BAT0=75" >> /etc/default/tlp
sudo echo "STOP_CHARGE_THRESH_BAT0=80" >>  /etc/default/tlp