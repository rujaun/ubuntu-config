#!/bin/bash

sudo cp firmware/rkl_dmc_ver2_02.bin /lib/firmware/i915/rkl_dmc_ver2_02.bin
sudo update-initramfs -u -k all
sudo apt-get update -y