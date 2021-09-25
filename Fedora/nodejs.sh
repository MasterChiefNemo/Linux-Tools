#!/bin/bash

sudo dnf install gcc-c++ make -y
sudo curl -sL https://rpm.nodesource.com/setup_14.x | sudo -E bash -
sudo dnf install nodejs -y

sudo curl --silent --location https://dl.yarnpkg.com/rpm/yarn.repo | sudo tee /etc/yum.repos.d/yarn.repo
sudo rpm --import https://dl.yarnpkg.com/rpm/pubkey.gpg

sudo dnf install yarn -y
