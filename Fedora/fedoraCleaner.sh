#!/bin/bash

# A simple shell script to update the users system 
# and remove all useless log and bak files.
#
# Damien Hunter (damien.hunter9@gmail.com) 26/12/2015

sudo dnf update -y
sudo dnf clean all

echo "Remove unnecessary log files!"
sudo find / -name *.log -type f -delete
sleep 5

echo "Remove unnecessary bak files!"
sudo find / -name *.bak -type f -delete
echo "All Complete!"
sleep 5
