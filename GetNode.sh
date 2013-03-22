#!/bin/bash

echo "Install Node"
add-apt-repository -y ppa:chris-lea/node.js 
apt-get update
apt-get install -y nodejs

echo "Install tools"
apt-get install -y npm
npm install -g express