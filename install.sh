#!/bin/bash
clear
echo
echo "Welcome to the 'set-icon v1.0' setup."
echo
echo "Before we can start, you have to enter your administration password."
sudo echo
unset char
prompt="Select: Install (1), Uninstall (2) or Exit (x) "
read -p "$prompt" -r -s -n 1 char
	
cd ~/Downloads/
    if [[ $char == "1" ]]
    then
	echo
	echo "Installing 'set-icon' to /usr/local/bin/"

	curl -LJO https://github.com/c0d3d-net/set-icon.macOS/raw/master/data.install
	sudo unzip -o  -C -qq ~/Downloads/data.install -d /usr/local/bin/
	sudo chmod +x /usr/local/bin/set-icon
	echo "Done! Cleaning up temporary data packages."
	rm ~/Downloads/data.install
	echo "Setup finished! Goodbye!"
    fi
    if [[ $char == "2" ]]
    then
	echo
	echo "Uninstalling 'set-icon'"
	sudo rm /usr/local/bin/set-ico
	echo "Done! Goodbye!"
    fi
    if [[ $char == "x" ]]
    then
	echo
	echo "Goodbye!"
    fi
