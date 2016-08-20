#!/bin/bash

# A simple script to install Jenkins.
# 
# Damien Hunter (damien.hunter9@gmail.com) 9/1/2016

# Download and Install Jenkins
sudo wget -O /etc/yum.repos.d/jenkins.repo http://pkg.jenkins-ci.org/redhat/jenkins.repo
sudo rpm --import https://jenkins-ci.org/redhat/jenkins-ci.org.key
sudo yum install jenkins -y

sudo yum install java -y 	# Install Java
sudo service jenkins start 	# Start Jenkins
sudo chkconfig jenkins on

firewall-cmd --zone=public --add-port=8080/tcp --permanent # Allow 8080, for Jenkins
firewall-cmd --zone=public --add-service=http --permanent
firewall-cmd --reload
firewall-cmd --list-all
