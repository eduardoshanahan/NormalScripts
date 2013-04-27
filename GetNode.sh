#!/bin/bash

echo "Install Node"
add-apt-repository -y ppa:chris-lea/node.js 
apt-get update
apt-get install -y nodejs

echo "Install tools"
apt-get install -y npm
npm install -g express
npm install -g nodemon
npm install -g mocha
npm install -g restify

echo "Make sure the access rights are correct"
sudo chown -R ubuntu.ubuntu ~/tmp
sudo chown -R ubuntu.ubuntu ~/.npm