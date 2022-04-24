#!/bin/bash
# Inital Settings for Gigachads

# Install AUR Helper
./install_paru.sh

# GTK Theme
gsettings set org.gnome.desktop.interface icon-theme "Papirus-Dark"          
gsettings set org.gnome.desktop.interface gtk-theme "Arc-Dark"

# Nemo Default Terminal
gsettings set org.cinnamon.desktop.default-applications.terminal exec kitty

