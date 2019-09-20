#!/bin/bash
chmod +x install.sh

os=${OSTYPE//[0-9.-]*/}
case "$os" in

  darwin) # Apple/Mac
    sudo cd ~/Downloads/
    # Assuming that when the user downloads the file, it will be here.
    curl -LJO https://github.com/c0d3d-net/set-icon.macOS/raw/master/data.install
    unzip -o -C -qq ~/Downloads/data.install -d /usr/local/bin/
    # Modify to where `data.install` is recognized along with this file
    chmod +x /usr/local/bin/set-icon
    rm ~/Downloads/data.install
    echo "Setup finished! Running commands!"
    -image ~/set-icon_cross-platform-master/test/needpix.png
    -file ~/set-icon_cross-platform-master/test/index.html
    # Sub out these file paths to your liking.
  ;;

  msys) # Windows
    ./dev/switch.cmd
    # https://www.computerhope.com/unix/bash/exec.htm
  ;;

  *) # Linux (for now) and "*" = All other operating systems
    # Response
    echo "Uncompatible Operating system $OSTYPE"
  exit 1

esac

# rm dev/switch.cmd
# rm install.sh
