#!/bin/bash

yes | apt update
yes | pkg update
# Grant storage permission
termux-setup-storage

# Install required packages
yes | pkg install zsh
yes | pkg install curl
yes | pkg install git


git clone https://github.com/RED-ALERT-TIGERS/Termux

#Copy and overwrite 
yes | cp -rf $HOME/MAXTER/maxterm.p10k.zsh $HOME/.p10k.zsh
yes | cp -rf $HOME/MAXTER/maxterm.zshrc $HOME/.zshrc
yes | cp -rf $HOME/MAXTER/maxterm.termux.properties $HOME/.termux/termux.properties
yes | cp -rf $HOME/MAXTER/maxterm.colors.properties $HOME/.termux/colors.properties
yes | cp -rf $HOME/MAXTER/maxterm.font.ttf $HOME/.termux/font.ttf

# Change default shell to Zsh
chsh -s zsh

# Remove the introduction text
rm /data/data/com.termux/files/usr/etc/motd

echo "Script execution completed!"