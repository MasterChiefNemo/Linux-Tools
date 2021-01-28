#!/bin/sh

cd ../..

sudo git clone https://github.com/hyperledger-labs/minifabric.git

cd minifabric

sudo date;./minifab install -c mychannel -l java -n abstore -v 3.1 -p '"init","a","231","b","331"'
sudo date;./minifab approve,commit; date
sudo date; ./minifab initialize; date
sudo date;./minifab invoke; date
sudo date;./minifab invoke -p '"query","a"'; date
sudo date;./minifab invoke -p '"query","b"'; date
