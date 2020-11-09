#!/bin/bash

sudo dpkg-reconfigure unattended-upgrades
sudo apt remove unattended-upgrades

dpkg-reconfigure cloud-init
sudo dpkg-reconfigure cloud-init
sudo apt-get purge cloud-init
sudo rm -rf /etc/cloud/ && sudo rm -rf /var/lib/cloud/
sudo reboot