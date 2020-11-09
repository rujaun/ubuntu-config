#!/bin/bash

sudo tee -a /usr/share/X11/xorg.conf.d/20-intel.conf <<EOF
Section "Device"
    Identifier      "Device0"
    Driver          "intel"
    Option          "Backlight"      "intel_backlight"
EndSection

Section "Monitor"
    Identifier      "Monitor0"
EndSection

Section "Screen"
    Identifier      "Screen0"
    Monitor         "Monitor0"
    Device          "Device0"
EndSection

EOF