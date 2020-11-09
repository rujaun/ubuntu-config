#!/bin/bash

sudo tee -a /usr/share/X11/xorg.conf.d/20-intel.conf <<EOF
Section "Device"
    Identifier  "Intel Graphics" 
    Driver      "intel"
    Option      "Backlight"  "intel_backlight"
EndSection
EOF