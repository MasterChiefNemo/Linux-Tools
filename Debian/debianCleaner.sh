#!/bin/bash

# This is an auto update and upgrade tool for
# Debian based distributions.
#
# Damien HUnter (damien.hunter30@gmail.com)

echo "Performing an Update and Upgrade!"
sleep 2
sudo apt-get -y update # System Update
sudo apt-get -y upgrade # System Upgrade
sudo apt-get -y dist-upgrade
echo

echo "Performing a clean up operation!"
sleep 2
sudo apt-get remove
sudo apt-get -y  autoremove # Removes all non-essential packages.
sudo apt-get clean # Clean up.
sudo apt-get autoclean # Additional clean up.
echo "Done!"
echo

sleep 3

echo "Remove unnecessary log files!"
sudo find / -name *.log -type f -delete
sleep 2
echo

echo "Remove unnecessary bak files!"
sudo find / -name *.log -type f -delete
echo "Done!"
