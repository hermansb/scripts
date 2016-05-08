#!/bin/bash
sudo apt-get install flashplugin-installer # for videos on the internet 

# KeePass
sudo apt-add-repository ppa:jtaylor/keepass
sudo apt-get update
sudo apt-get install keepass2
sudo apt-get install mono-complete # for installing .net apps like KeePass
sudo apt-get install xdotool # for global auto type for KeePass
sudo apt-get install vim # better text editor vs vi

# Gimp for image editing / scanning
sudo apt-get install gimp

# Install Chrome
sudo apt-get install libxss1 libappindicator1 libindicator7
wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
sudo dpkg -i google-chrome*.deb
rm google-chrome*.deb

# Node
sudo apt-get install nodejs

# Git
sudo apt-get install git

# Generate new SSH key
ssh-keygen -t rsa -b 4096 

# Add key above to ssh-agent
eval "$(ssh-agent -s)"
ssh-add ~/.ssh/id_rsa

# KeeAgent
sudo add-apt-repository ppa:dlech/keepass2-plugins
sudo apt-get update
sudo apt-get install keepass2-plugin-keeagent

# Downloads and installs xclip useful for copying contents of files.
sudo apt-get install xclip
xclip -sel clip < ~/.ssh/id_rsa.pub # Copy contents of id_rsa.pub file to clipboard. You can now paste to GitHub, VMs etc.


echo "Go to http://lechnology.com/software/keeagent/installation/#disable-ssh-component-of-gnome-keyring to disable gnome keyring"

echo "For installing printer drivers see http://support.brother.com/g/b/producttop.aspx?c=ca&lang=en&prod=dcp7065dn_all"
