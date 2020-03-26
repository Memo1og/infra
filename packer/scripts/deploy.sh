#!/bin/bash
gem install bundler:1.15.3
cd ~ && git clone https://github.com/Artemmkin/reddit.git
cd reddit && bundle install
puma -d
ps aux | grep puma
