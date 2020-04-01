#!/bin/bash

# Script to quickly update the VM.
sudo apt-get update -y && sudo apt-get upgrade -y
sudo apt-get autoclean -y
sudo apt-get autoremove -y
