#!/bin/sh

echo "Install Node"
add-apt-repository -y ppa:chris-lea/node.js 
apt-get update
apt-get install -y nodejs

echo "Install tools"
npm install -g express