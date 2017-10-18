#!/bin/bash

# Utilities that this i3 config uses
sudo apt-get install -y i3 volti blueman scrot xbacklight

# Make Dunst optional
# sudo apt-get install -y dunst

# Playerctl 
wget https://github.com/acrisci/playerctl/releases/download/v0.5.0/playerctl-0.5.0_amd64.deb
sudo dpkg -i playerctl-0.5.0_amd64.deb
rm playerctl-0.5.0_amd64.deb
