#!/bin/bash

#update the list of packages available to install
sudo apt update

# Ensure git is installed
sudo apt install -y git
sudo apt-get install gnupg2 -y


\curl -sSL https://rvm.io/pkuczynski.asc | gpg2 --import -

gpg --keyserver hkp://pool.sks-keyservers.net --recv-keys 409B6B1796C275462A1703113804BB82D39DC0E3 7D2BAF1CF37B1$




\curl -sSL https://rvm.io/pkuczynski.asc | gpg2 --import -


\curl -sSL https://get.rvm.io | bash -s stable --ruby

\curl -sSL https://get.rvm.io | bash -s stable --rails


. ~/.rvm/scripts/rvm

rvm install 2.4.1
rvm use 2.4.1 --default
gem install bundler
ruby -v
bundle -v



echo 'time for mongo installation'
#!/bin/bash
sudo apt install wget

wget -qO - https://www.mongodb.org/static/pgp/server-4.4.asc | sudo apt-key add -

sudo apt-get install gnupg

wget -qO - https://www.mongodb.org/static/pgp/server-4.4.asc | sudo apt-key add -

echo "deb http://repo.mongodb.org/apt/debian buster/mongodb-org/4.4 main" | sudo tee /etc/apt/sources.list.d/mongodb-org-4.4.list

sudo apt-get update

sudo apt-get install -y mongodb-org

sudo systemctl start mongod

sudo systemctl daemon-reload

sudo systemctl status mongod

sudo systemctl enable mongod


#deploy
echo 'time for deploy an APP'

git clone https://github.com/Artemmkin/reddit.git

cd reddit && bundle install

puma -d

ps aux | grep puma


echo 'Done'

sudo shutdown -r now;
exit;
