#!/bin/bash

echo -e "\nInstall OpenSSH and add SSH key to ssh-agent? (Y/N): "

read SSHKEY

if [ "$SSHKEY" = "Y" ]; then
	echo -e "\nChecking if ssh key exists..."

	FILE=~/.ssh/id_rsa
	if [[ -f "$FILE" ]]; then
		echo -e "\n$FILE exists."

		echo -e "\nInstalling OpenSSH and adding SSH key to ssh-agent"
		sudo apt install openssh-client
		eval "$(ssh-agent -s)"
		chmod 400 ~/.ssh/id_rsa
		ssh-add ~/.ssh/id_rsa
	else
		echo -e "\n$FILE does not exist."
		exit
	fi
fi

echo -e "\nInstall credential manager for SSH key passphrases? (Y/N): "

read SSHCRED

if [ "$SSHCRED" = "Y" ]; then
	mkdir -p ~/.config/plasma-workspace/env/
	
	echo -e "\nCopying ssh-agent.sh"
	cp ./ssh-agent.sh ~/.config/plasma-workspace/env/ssh-agent.sh
	chmod u+x ~/.config/plasma-workspace/env/ssh-agent.sh

	echo -e "\nCopying askpass.sh"
	cp ./askpass.sh ~/.config/plasma-workspace/env/askpass.sh
	chmod u+x ~/.config/plasma-workspace/env/askpass.sh

	echo -e "\nCopying ssh-add.sh"
	cp ./askpass.sh ~/.config/autostart-scripts/ssh-add.sh
	chmod u+x ~/.config/autostart-scripts/ssh-add.sh
fi