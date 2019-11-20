#! /bin/bash

echo "Starting System Update"
sudo dnf update -y
sudo dnf upgrade -y
echo "Updates and Upgrades complete..."
sleep(5000)

echo "Removing unnecessary files...."
sudo dnf autoremove -y
echo "Files removed"
sleep(5000)
echo "Complete!"
