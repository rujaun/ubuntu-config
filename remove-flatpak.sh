#!/bin/bash

flatpak uninstall --all
sudo apt-get remove --autoremove flatpak
sudo apt-get purge flatpak