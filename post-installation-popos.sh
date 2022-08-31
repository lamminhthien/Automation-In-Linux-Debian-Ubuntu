# Fix borken package before install anything
sudo apt --fix-broken install -y
# Install Local Site to Host Wordpress
wget https://cdn.localwp.com/releases-stable/6.4.2+6012/local-6.4.2-linux.deb
sudo dpkg -i local-6.4.2-linux.deb
# Install NodeJS
cd ~
curl -sL https://deb.nodesource.com/setup_16.x | sudo bash -
sudo apt -y install nodejs
## Install Postgres 13
sudo sh -c 'echo "deb http://apt.postgresql.org/pub/repos/apt $(lsb_release -cs)-pgdg main" > /etc/apt/sources.list.d/pgdg.list'
wget --quiet -O - https://www.postgresql.org/media/keys/ACCC4CF8.asc | sudo apt-key add -
sudo apt-get update
sudo apt-get -y install postgresql
# Install VMWare Tool 
sudo apt-get update
sudo apt-get install open-vm-tools-desktop -y
# Install Git
sudo apt-get install git -y
# Install DBeaver for manager database
flatpak install flathub io.dbeaver.DBeaverCommunity

