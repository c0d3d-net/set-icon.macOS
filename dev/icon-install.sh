#!/bin/bash
# LATER: chmod +x

os=${OSTYPE//[0-9.-]*/}
case "$os" in
  darwin)
  
  
    # UNTIL ABLE TO WRITE `data.install` CORRECTLY (to avoid having to download)
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
	      sudo rm /usr/local/bin/set-icon
	      echo "Done! Goodbye!"
      fi
      if [[ $char == "x" ]]
      then
	      echo
	      echo "Goodbye!"
      fi
      
      
  ;;

  msys)
  
  
    cat > WINDOWS_set-icon.cmd <<EOF
      REM CREDITS TO THE FOLLOWING WEBSITES
      REM https://www.raymond.cc/blog/how-to-change-the-standard-folder-icon-to-another-icon/
      REM https://www.robvanderwoude.com/batchcommands.php
      REM could do IF statement on operating system
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
