#!/bin/bash

sudo apt purge snapd
sudo apt autoremove
echo 'Package: snapd' > /etc/apt/preferences.d/nosnap.pref
echo 'release a=*' >> /etc/apt/preferences.d/nosnap.pref
echo 'Pin-Priority: -10' >> /etc/apt/preferences.d/nosnap.pref
sudo apt update