#!/bin/sh

sudo dnf install yum-utils -y
sudo yum-config-manager --add-repo https://download.docker.com/linux/centos/docker-ce.repo
sudo yum-config-manager --enable docker-ce-nightly
sudo yum install -y docker-ce docker-ce-cli containerd.io
sudo systemctl start docker
