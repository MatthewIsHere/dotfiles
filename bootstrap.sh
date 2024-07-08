#!/bin/sh

# Clone submodules
git submodule update --init --recursive

# Copy config files to ./config
cp -r ./config/* ~/.config/

# Copy .profile
cat profile >> ~/.profile

# GTK theme
gsettings set org.gnome.desktop.interface icon-theme "Papirus-Dark"          
gsettings set org.gnome.desktop.interface gtk-theme "Arc-Dark"

# Nemo default terminal
gsettings set org.cinnamon.desktop.default-applications.terminal exec kitty

# Install AUR helper
./install_paru.sh

# Install required packages
./install_required.sh

# Install extra
./install_extras.sh

rustup default nightly

