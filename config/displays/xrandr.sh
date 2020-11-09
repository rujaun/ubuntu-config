#!/bin/bash

intern=LVDS1
extern=DP1

# For laptop config uncomment this
#if xrandr | grep "$extern disconnected"; then
#    xrandr --output "$extern" --off --output "$intern" --auto
#else
#    xrandr --output "$intern" --off --output "$extern" --auto
#fi