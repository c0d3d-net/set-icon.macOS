#!/bin/bash
chmod +x

os=${OSTYPE//[0-9.-]*/}
case "$os" in
  darwin)
    cd ~/Downloads/
	  echo
	  echo "Installing 'set-icon' to /usr/local/bin/"
	  curl -LJO https://github.com/c0d3d-net/set-icon.macOS/raw/master/data.install
	  sudo unzip -o  -C -qq ~/Downloads/data.install -d /usr/local/bin/
    sudo unzip -o  -C -qq ~/Desktop/data.install -d /usr/local/bin/
    # Modify to where `data.install` is recognized along with this file
	  sudo chmod +x /usr/local/bin/set-icon
	  echo "Done! Cleaning up temporary data packages."
	  rm ~/Downloads/data.install
    rm ~/Desktop/data.install
	  echo "Setup finished! Running commands!"
    -image ~/javacrypt-tpyrcavaj/assets/lock.png
    -file ~/javacrypt-tpyrcavaj
    # Sub out these file paths to your liking.
  ;;


  msys)
    cat > WINDOWS_set-icon.cmd <<EOF
      REM https://www.raymond.cc/blog/how-to-change-the-standard-folder-icon-to-another-icon/
      REM https://www.robvanderwoude.com/batchcommands.php
      if [%1] == [] goto:eof
      ECHO [.ShellClassInfo] >%1\desktop.in
      ECHO IconResource=C:\Windows\system32\SHELL32.dll.,47 >>%1\desktop.in
      REM ^ENTER DESIRED FILE PATH ABOVE^
      move %1\desktop.in %1\desktop.ini
      attrib +S +H %1\desktop.ini
      attrib +R %1
      EXIT
     EOF
    ./WINDOWS_set-icon.cmd
  ;;


  linux)
    # Test
    echo "I'm Linux"
  ;;
  *)
  echo "Unknown Operating system $OSTYPE"
  exit 1
esac
