#!/bin/bash

# Script to quickly update Debian based systems.
# Author: Damien Hunter (damien.hunter9@gmail.com)
echo "Starting System Update..."
sudo apt-get update -y && sudo apt-get upgrade -y
echo

sudo apt-get autoclean -y
echo

sudo apt-get autoremove -y
echo
echo "Done"
