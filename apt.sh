#!/usr/bin/env bash

# Add some repositories
sudo add-apt-repository ppa:neovim-ppa/unstable

# Update!
sudo apt-get update

#
sudo apt-get install -y virtualbox-qt
sudo apt-get install -y exfat-utils exfat-fuse
sudo apt-get install -y git vim-nox neovim tmux zsh bash-completion
sudo apt-get install -y python-dev python-pip python3-dev python3-pip
sudo apt-get install -y python-numpy python-scipy python-matplotlib
sudo apt-get install -y ipython ipython-notebook python-pandas
sudo apt-get install -y python-sympy python-nose
sudo apt-get install -y rbenv bundler
sudo apt-get install -y nodejs nodejs-legacy
sudo apt-get install -y vagrant ansible

sudo apt-key adv --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys 58118E89F3A912897C070ADBF76221572C52609D
echo "deb https://apt.dockerproject.org/repo ubuntu-$(lsb_release -cs) main" | sudo tee /etc/apt/sources.list.d/docker.list
sudo apt-get purge lxc-docker*
sudo apt-cache policy docker-engine
sudo apt-get install linux-image-extra-$(uname -r) docker-engine
