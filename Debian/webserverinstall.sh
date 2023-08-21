#!/bin/bash

#
# Installs and enables the Apache 2 Web Server for Debian based systems. You
# run this at your own risk.
#
# August 2023
#
# Damien Hunter damien.hunter9@gmail.com
#

sudo apt update -y && sudo apt upgrade -y
sudo apt install apache2 -y
sudo systemctl enable apache2
sudo systemctl start apache2
