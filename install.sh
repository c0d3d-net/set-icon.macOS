#!/bin/bash
chmod +x install.sh

os=${OSTYPE//[0-9.-]*/}
case "$os" in

  darwin) # Apple/Mac
    sudo cd ~/Downloads/
    # Assuming that when the user downloads the file, it will be here.
    echo "Installing 'set-icon' to /usr/local/bin/"
    sudo curl -LJO https://github.com/c0d3d-net/set-icon.macOS/raw/master/data.install
    sudo unzip -o  -C -qq ~/Downloads/data.install -d /usr/local/bin/
    # Modify to where `data.install` is recognized along with this file
    sudo chmod +x /usr/local/bin/set-icon
    echo "Done! Cleaning up temporary data packages."
    sudo rm ~/Downloads/data.install
    echo "Setup finished! Running commands!"
    sudo -image ~/set-icon_cross-platform/test/needpix.png
    sudo -file ~/set-icon_cross-platform/test/index.html
    # Sub out these file paths to your liking.
  ;;

  msys) # Windows 10+
    ./dev/switch.cmd
    # https://www.computerhope.com/unix/bash/exec.htm
  ;;

  *) # Linux (for now) and "*" = All other operating systems
    # Response
    echo "Uncompatible Operating system $OSTYPE"
  exit 1

esac

# sudo rm dev/switch.cmd
# sudo rm install.sh
