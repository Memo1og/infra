#!/bin/bash
cd ~
curl -sSL https://get.rvm.io | bash
source ~/.rvm/scripts/rvm
rvm -v
rvm install ruby
ruby -v
sudo apt-get install rubygems -y
gem update
sudo apt-get install ruby-dev zlib1g-dev liblzma-dev build-essential patch -y
rvm gemset list
gem install rails
rails -v
gem install bundler -V
ruby -v
bundle -v
sudo rm /etc/apt/sources.list.d/mongodb*.list
sudo apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv E52529D4
sudo bash -c 'echo "deb http://repo.mongodb.org/apt/ubuntu xenial/mongodb-org/4.0 multiverse" > /etc/apt/sources.list.d/mongodb-org-4.0.list'
sudo apt-get update
sudo apt-get install mongodb-org -y
sudo systemctl start mongod
sudo systemctl enable mongod
sudo systemctl status mongod
cd ~
git clone https://github.com/Artemmkin/reddit.git
cd reddit
gem install bundler:1.15.3
bundle install
puma -d
ps aux | grep puma
