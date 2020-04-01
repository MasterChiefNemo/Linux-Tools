#!/bin/bash
#
# Docker installer for Debian based systems.
# You run this at your own risk.
#
# Damien Hunter damien.hunter9@gmail.com

sudo apt-get update -y && sudo apt-get upgrade -y
sudo apt-get install apt-transport-https ca-certificates curl gnupg2 software-properties-common

sudo curl -fsSL https://download.docker.com/linux/debian gpg | sudo apt-key add -
sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/debian $(lsb_release -cs) stable"
sudo apt-get install -y

sudo apt-cache policy docker-ce
sudo apt-get install docker-ce
sudo systemctl status docker

sudo usermod -aG docker ${USER}

