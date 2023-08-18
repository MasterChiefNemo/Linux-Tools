#!/bin/bash

# This is an auto update and upgrade tool for
# Debian based distributions.
#
# Damien HUnter (damien.hunter30@gmail.com)

echo "Performing an Update and Upgrade!"
sleep 2
sudo apt update -y && sudo apt upgrade -y # System Update & Upgrade
sudo apt-get dist-upgrade -y
echo

echo "Performing a clean up operation!"
sleep 2
sudo apt remove
sudo apt autoremove -y # Removes all non-essential packages.
sudo apt autoclean # Additional clean up.
echo "Done!"
echo

sleep 3

echo "Remove unnecessary log files!"
sudo find / -name *.log -type f -delete
echo

echo "Remove unnecessary bak files!"
sudo find / -name *.log -type f -delete
echo "Done!"
