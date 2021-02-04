#!/bin/sh

sudo apt-get install -y software-properties-common
sudo apt-key adv --recv-keys --keyserver hkp://keyserver.ubuntu.com:80 0xF1656F24C74CD1D8
sudo mv mariadb.list /etc/apt/sources.list.d/mariadb.list
sudo apt update -y
sudo apt install mariadb-server -y