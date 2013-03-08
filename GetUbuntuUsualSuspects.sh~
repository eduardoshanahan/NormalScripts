#!/bin/sh

echo 'Get keys'
add-apt-repository -y ppa:a-v-shkop/chromium
add-apt-repository -y ppa:webupd8team/sublime-text-2 
apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv 7F0CEB10
if [ ! -e /etc/apt/sources.list.d/10gen.list ¦¦ ! -s /etc/apt/sources.list.d/10gen.list]; then
	echo "deb http://downloads-distro.mongodb.org/repo/ubuntu-upstart dist 10gen" >> /etc/apt/sources.list.d/10gen.list
fi
wget http://apt.mucommander.com/apt.key
apt-key add apt.key
rm apt.key
echo "deb http://apt.mucommander.com stable main non-free contrib" >> /etc/apt/sources.list

echo 'Get ready'
apt-get -y update

echo 'Install Git'
apt-get -y install git

echo 'Install Synapse'
apt-get -y install synapse

echo 'Install Woof'
apt-get -y install woof

echo 'Install MuCommander'
apt-get -y install mucommander

echo 'Install Chromium'
apt-get -y install chromium-browser

echo 'Install Mongo'
apt-get -y install mongodb-10gen

echo 'Install Sublime'
apt-get -y install sublime-text
echo '...'
echo 'Remember to add Sublime`s package manager by pasting the following in the command console (ctrl+\`)'
echo "import urllib2,os; pf='Package Control.sublime-package'; ipp=sublime.installed_packages_path(); os.makedirs(ipp) if not os.path.exists(ipp) else None; urllib2.install_opener(urllib2.build_opener(urllib2.ProxyHandler())); open(os.path.join(ipp,pf),'wb').write(urllib2.urlopen('http://sublime.wbond.net/'+pf.replace(' ','%20')).read()); print('Please restart Sublime Text to finish installation')"
echo '...'
