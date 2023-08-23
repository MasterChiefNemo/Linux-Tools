#!/bin/sh
#
# Retrieves and installs Mariadb
#
# Damien Hunter damien.hunter9@gmail.com
#
# Updated: August 2023
#

sudo apt install software-properties-common -y
sudo apt-key adv --recv-keys --keyserver hkp://keyserver.ubuntu.com:80 0xF1656F24C74CD1D8
sudo mv mariadb.list /etc/apt/sources.list.d/mariadb.list
sudo apt update -y
sudo apt install mariadb-server -y
