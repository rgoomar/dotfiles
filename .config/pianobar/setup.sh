#!/bin/bash

# Install pianobar
sudo apt-get install pianobar

# Make pianobar dir
mkdir $HOME/.config/pianobar

# Add the FIFO file
mkfifo $HOME/.config/pianobar/ctl

# Add that location to the config
echo "fifo=$HOME/.config/pianobar/ctl" >> $HOME/.config/pianobar/config
