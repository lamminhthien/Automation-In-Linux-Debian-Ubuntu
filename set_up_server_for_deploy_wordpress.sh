#!/usr/bin/bash
# First update every thing
sudo apt-get update -y
# Install Local Site to Host Wordpress
wget https://cdn.localwp.com/releases-stable/6.4.2+6012/local-6.4.2-linux.deb
sudo dpkg -i local-6.4.2-linux.deb
# Install Ngrok
sudo npm install -g ngrok
# Generated ssh key-gen
ssh-keygen -b 2048 -t rsa -f /tmp/sshkey -q -N ""

