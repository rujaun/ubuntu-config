#!/bin/bash

echo -e "\nConfigure git for first time setup? (Y/N): "

read GIT

if [ "$GIT" = "Y" ]; then
	echo -e "\nSetting up git..."
	git config --global user.name "Rujaun Fourie"
	git config --global user.email rujaun@gmail.com
	git config --global pull.rebase false
fi