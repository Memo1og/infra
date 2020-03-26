#!/bin/bash
curl -sSL https://get.rvm.io | bash
source /home/<user>/.rvm/scripts/rvm
rvm -v
rvm install ruby
ruby -v
sudo apt-get install rubygems
gem update
sudo apt-get install ruby-dev zlib1g-dev liblzma-dev build-essential patch
rvm gemset list
gem install rails
rails -v
gem install bundler -V
ruby -v
bundle -v
