#!/usr/bin/bash
echo "Install Docker"
sudo apt install docker.io -y
sudo groupadd docker
sudo usermod -aG docker $USER
echo 'Done please logout to take effect'


