#!/bin/bash
cd ~
git clone https://github.com/Artemmkin/reddit.git
cd reddit
gem install bundler:1.15.3
bundle install
puma -d
ps aux | grep puma
