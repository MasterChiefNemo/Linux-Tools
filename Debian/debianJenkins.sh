#!/bin/bash

# Script to install and setup jenkins
# Damien Hunter (damien.hunter9@gmail.com) 10/1/2016

# Download Jenkins
wget -q -O - http://pkg.jenkins-ci.org/debian-stable/jenkins-ci.org.key | sudo apt-key add -
deb http://pkg.jenkins-ci.org/debian-stable binary/

# Install Jenkins
sudo apt-get -y update
sudo apt-get install -y jenkins

# Start Jenkins
service jenkins start

# Clean Up
apt-get remove
apt-get autoremove
apt-get clean
apt-get autoclean
