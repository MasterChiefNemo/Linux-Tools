#!/bin/sh

cd ../..

sudo git clone https://github.com/hyperledger-labs/minifabric.git

cd minifabric

sudo ./minifab install -c mychannel -l java -n abstore -v 3.1 -p '"init","a","231","b","331"'
sudo ./minifab approve,commit
sudo ./minifab initialize
sudo ./minifab invoke
sudo ./minifab invoke -p '"query","a"'
sudo ./minifab invoke -p '"query","b"'
