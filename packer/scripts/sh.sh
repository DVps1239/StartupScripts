#!/bin/bash

#update the list of packages available to install
sudo apt update

# Ensure git is installed
sudo apt install -y git
sudo apt-get install gnupg2 -y


\curl -sSL https://rvm.io/pkuczynski.asc | gpg2 --import -

gpg --keyserver hkp://pool.sks-keyservers.net --recv-keys 409B6B1796C275462A1703113804BB82D39DC0E3 7D2BAF1CF37B1$


\curl -sSL https://rvm.io/mpapis.asc | gpg2 --import -


\curl -sSL https://get.rvm.io | bash -s stable --ruby

\curl -sSL https://get.rvm.io | bash -s stable --rails


. ~/.rvm/scripts/rvm

rvm install 3.0.0
rvm use 3.0.0 --default
gem install bundler
ruby -v
bundle -v


