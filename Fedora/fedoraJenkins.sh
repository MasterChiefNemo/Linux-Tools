#!/bin/bash

# A simple script to install and configure Jenkins for immediate use.
# Will automatically start Jenkins.
# 
# Damien Hunter (damien.hunter9@gmail.com) 28/10/2019 - Updated

# Download and Install Jenkins
sudo wget -O /etc/yum.repos.d/jenkins.repo http://pkg.jenkins-ci.org/redhat/jenkins.repo
sudo rpm --import https://jenkins-ci.org/redhat/jenkins-ci.org.key
sudo dnf install jenkins -y

sudo dnf install java -y 	# Install Java
sudo service jenkins start 	# Start Jenkins
sudo chkconfig jenkins on

firewall-cmd --zone=public --add-port=8080/tcp --permanent # Allow 8080, for Jenkins
firewall-cmd --zone=public --add-service=http --permanent
firewall-cmd --reload
firewall-cmd --list-all
