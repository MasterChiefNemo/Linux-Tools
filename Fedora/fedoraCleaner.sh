#!/bin/bash

# A simple shell script to update the users system 
# and remove all useless log and bak files.
#
# Damien Hunter (damien.hunter9@gmail.com) 26/12/2015

dnf update -y
dnf clean all

echo "Remove unnecessary log files!"
find / -name *.log -type f -delete
sleep 5

echo "Remove unnecessary bak files!"
find / -name *.bak -type f -delete
echo "Done!"
sleep 5
