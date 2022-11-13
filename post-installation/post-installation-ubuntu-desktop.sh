#!/usr/bin/bash
# First update every thing
sudo apt-get update -y
# Install Flathub
sudo apt install flatpak -y
# Add Flathub 
flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo
# Install Local Site to Host Wordpress
wget https://cdn.localwp.com/releases-stable/6.4.2+6012/local-6.4.2-linux.deb
sudo dpkg -i local-6.4.2-linux.deb
# Place it after install local site
sudo apt --fix-broken install -y
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
flatpak install -y flathub io.dbeaver.DBeaverCommunity
# Install VSCode
sudo apt-get install wget gpg -y
wget -qO- https://packages.microsoft.com/keys/microsoft.asc | gpg --dearmor > packages.microsoft.gpg
sudo install -D -o root -g root -m 644 packages.microsoft.gpg /etc/apt/keyrings/packages.microsoft.gpg
sudo sh -c 'echo "deb [arch=amd64,arm64,armhf signed-by=/etc/apt/keyrings/packages.microsoft.gpg] https://packages.microsoft.com/repos/code stable main" > /etc/apt/sources.list.d/vscode.list'
rm -f packages.microsoft.gpg
sudo apt install apt-transport-https -y
sudo apt update
sudo apt install code -y
# Disable Animation in gnome desktop
gsettings set org.gnome.desktop.interface enable-animations false
# Install Yarn
sudo npm install -g yarn
# Install Ibus bamboo
sudo add-apt-repository -y ppa:bamboo-engine/ibus-bamboo
sudo apt-get update -y
sudo apt-get install -y ibus ibus-bamboo --install-recommends
ibus restart
# Install Shutter for support ruler pixel in code front end
sudo apt-get install -y shutter
# Install Best Color picker tool call gpick
sudo apt-get -y install gpick
# Install Google Chrome
wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
sudo dpkg -i google-chrome-stable_current_amd64.deb
# Install Dolphin File Manager
sudo apt install -y dolphin
# Set Dolphin as default file manager
xdg-mime default org.kde.dolphin.desktop inode/directory
# Install GIMP 
flatpak install -y flathub org.gimp.GIMP
# Install Inkscape
flatpak install -y flathub org.inkscape.Inkscape
# Install Figma For Linux
flatpak install -y flathub io.github.Figma_Linux.figma_linux
# Install Github Desktop
flatpak install -y flathub io.github.shiftey.Desktop
# Install VLC
flatpak install -y flathub org.videolan.VLC
# Install WPS Office
flatpak install -y flathub com.wps.Office
# Install Lutris
flatpak install -y flathub net.lutris.Lutris
# Install Slack
flatpak install -y flathub com.slack.Slack
# Set default git editor to vim
git config --global core.editor "vim"
# Hide other removable disk on dock
gsettings set org.gnome.shell.extensions.dash-to-dock show-mounts false
# Install CopyQ
flatpak install -y flathub com.github.hluk.copyq
# Install notepad++ 
flatpak install -y flathub com.github.dail8859.NotepadNext
# Generated ssh-keygen
sudo ssh-keygen -b 2048 -t rsa -f ~/sshkey -q -N ""
# Install Docker
sudo chmod +x install_docker.sh && sudo ./install_docker.sh
