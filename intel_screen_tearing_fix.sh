#!/bin/bash

sudo apt-get install mesa-utils

echo 'Section "Device"\n Identifier "Intel Graphics"\n Driver "Intel"\n Option "AccelMethod" "sna"\n Option "TearFree" "true"\nEndSection' | sudo tee /usr/share/X11/xorg.conf.d/20-intel.conf
