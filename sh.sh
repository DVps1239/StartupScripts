#!/bin/bash

#update the list of packages available to install
sudo apt update

# Ensure git is installed
sudo apt install -y git
sudo apt-get install gnupg2 -y

gpg --keyserver hkp://pool.sks-keyservers.net --recv-keys 409B6B1796C275462A1703113804BB82D39DC0E3 7D2BAF1CF37B1$

\curl -sSL https://get.rvm.io | bash -s stable --ruby
\curl -sSL https://get.rvm.io | bash -s stable --rails
echo ok
. ~/.rvm/scripts/rvm

rvm install 2.4.1
rvm use 2.4.1 --default
gem install bundler
ruby -v
bundle -v


