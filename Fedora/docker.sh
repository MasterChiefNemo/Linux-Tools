#!/bin/bash

sudo dnf update -y && sudo dnf upgrade -y

sudo dnf config-manager --add-repo=https://download.docker.com/linux/fedora/docker-ce.repo
sudo dnf install docker-ce docker-compose -y
sudo systemctl enable --now docker
sudo systemctl status docker
sudo groupadd docker
