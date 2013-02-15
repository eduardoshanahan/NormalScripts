#!/bin/sh

echo 'Get ready'
apt-get -y update

echo 'Install Git'
apt-get -y install git

echo 'Install Synapse'
apt-get -y install synapse

echo 'Install Chromium'
sudo add-apt-repository -y ppa:a-v-shkop/chromium
sudo apt-get -y update
sudo apt-get -y install chromium-browser

echo 'Install Sublime'
add-apt-repository -y ppa:webupd8team/sublime-text-2
apt-get -y update
apt-get -y install sublime-text

echo 'Remember to add Sublime`s package manager by pasting the following in the command console (ctrl+\`)'
echo "import urllib2,os; pf='Package Control.sublime-package'; ipp=sublime.installed_packages_path(); os.makedirs(ipp) if not os.path.exists(ipp) else None; urllib2.install_opener(urllib2.build_opener(urllib2.ProxyHandler())); open(os.path.join(ipp,pf),'wb').write(urllib2.urlopen('http://sublime.wbond.net/'+pf.replace(' ','%20')).read()); print('Please restart Sublime Text to finish installation')"

echo 'Install Woof'
apt-get -y install woof

echo 'Install Node'
add-apt-repository -y ppa:chris-lea/node.js  
apt-get -y update  
apt-get -y install nodejs

echo 'Install Mongo'
apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv 7F0CEB10
echo "deb http://downloads-distro.mongodb.org/repo/ubuntu-upstart dist 10gen" >> /etc/apt/sources.list.d/10gen.list
apt-get -y install mongodb-10gen