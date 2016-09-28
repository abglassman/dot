#!/usr/bin/env sh

sudo apt-get install software-properties-common
sudo apt-add-repository ppa:ansible/ansible
sudo apt-get update
sudo apt-get install ansible git
cd ~

if [ ! -d "~/.config/dotfiles" ]; then
	git clone https://github.com/abglassman/dot ~/.config/dotfiles
fi

