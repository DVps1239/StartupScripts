#!/bin/bash
#deploy


echo 'time for deploy an APP'

git clone https://github.com/Artemmkin/reddit.git

cd reddit && bundle install

puma -d

ps aux | grep puma

echo 'Done'
