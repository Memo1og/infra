#!/bin/bash
cd ~ && curl -sSL https://get.rvm.io | bash
source ~/.rvm/scripts/rvm
sudo apt-get install rubygems -y
gem update
sudo apt-get install ruby-dev zlib1g-dev liblzma-dev build-essential patch -y
rvm gemset list
gem install rails
rvm install 2.4.1
rvm use 2.4.1 --default
gem install bundler:1.15.3 -V
