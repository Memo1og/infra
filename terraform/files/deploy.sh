#!/bin/bash
sudo rm -rf ~/reddit
set -e
source ~/.profile
git clone https://github.com/Artemmkin/reddit.git
cd reddit
bundle install
puma -d
ps aux | grep puma
sudo mv /tmp/puma.service /etc/systemd/system/puma.service
sudo systemctl enable puma
