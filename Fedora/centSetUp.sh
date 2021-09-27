#!/bin/sh

sudo dnf install epel-release wget curl golang git -y
sudo dnf update -y && sudo dnf upgrade -y

sudo dnf install -y gcc-c++ make 
sudo curl -sL https://rpm.nodesource.com/setup_14.x | sudo -E bash -

sudo sudo dnf install nodejs -y

sudo curl -sL https://dl.yarnpkg.com/rpm/yarn.repo | sudo tee /etc/yum.repos.d/yarn.repo
sudo yum install yarn -y
