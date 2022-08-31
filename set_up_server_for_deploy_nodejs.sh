#!/usr/bin/bash
# First update every thing
sudo apt-get update -y
# Install NodeJS 16
cd ~
curl -sL https://deb.nodesource.com/setup_16.x | sudo bash -
sudo apt -y install nodejs
## Install Postgres 13
sudo sh -c 'echo "deb http://apt.postgresql.org/pub/repos/apt $(lsb_release -cs)-pgdg main" > /etc/apt/sources.list.d/pgdg.list'
wget --quiet -O - https://www.postgresql.org/media/keys/ACCC4CF8.asc | sudo apt-key add -
sudo apt-get update
sudo apt-get -y install postgresql
# Install Yarn
sudo npm install -g yarn
# Install Ngrok
sudo npm install -g ngrok
# Generated ssh key-gen
ssh-keygen -b 2048 -t rsa -f /tmp/sshkey -q -N ""

