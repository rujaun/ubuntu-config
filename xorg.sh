#!/bin/bash

sudo apt install xterm
sudo apt install xorg xinit --no-install-recommends --no-install-suggests

# Disable touchpad while typing
sudo tee -a /etc/X11/xorg.conf.d/80-touchpad.conf <<EOF
Section "InputClass"
        Identifier "libinput touchpad catchall"
        MatchIsTouchpad "on"
        MatchDevicePath "/dev/input/event*"
        Driver "libinput"
 Option "DisableWhileTyping" "true"
EndSection
EOF