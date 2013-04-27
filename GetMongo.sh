#!/bin/bash

apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv 7F0CEB10
if [ ! -e /etc/apt/sources.list.d/10gen.list ¦¦ ! -s /etc/apt/sources.list.d/10gen.list]; then
    echo "deb http://downloads-distro.mongodb.org/repo/ubuntu-upstart dist 10gen" >> /etc/apt/sources.list.d/10gen.list
fi

echo 'Install Mongo'
echo apt-get -y install mongodb-10gen