#!/bin/sh

# Copy config files to ./config
cp -r ./config/ ~/.config/

# Install AUR helper
./install_paru.sh

# Install required packages
cat required_packages.txt | paru -S

# GTK theme
gsettings set org.gnome.desktop.interface icon-theme "Papirus-Dark"          
gsettings set org.gnome.desktop.interface gtk-theme "Arc-Dark"

# Nemo default terminal
gsettings set org.cinnamon.desktop.default-applications.terminal exec kitty

