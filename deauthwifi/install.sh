#!/bin/bash

# Install script for the deauthentication tool

# Choose the installation directory
install_dir="/usr/local/bin"
tool_name="deauthwifi"
# Copy the script to the installation directory
sudo cp deauthwifi.sh "$install_dir"/deauthwifi
sudo chmod +x "$install_dir"/"$tool_name"
sudo cp deauthwifi.png /usr/share/icons/
desktop_entry="[Desktop Entry]\nVersion=1.0\nType=Application\nName=deauthwifi\nExec=$tool_name\nIcon=/usr/share/icons/deauthwifi.png\nCategories=Utility\nTerminal=true"
echo -e "$desktop_entry" | sudo tee "/usr/share/applications/$tool_name.desktop" > /dev/null
sudo update-desktop-database

# Inform the user
echo "deauthwifi installed successfully. You can now run it with the command 'deauthwifi'."
