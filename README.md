# set-icon_cross-platform
set-icon lets you add or remove icons from files or folders.

## Installation
- Download the install script: https://github.com/c0d3d-net/set-icon.macOS/raw/master/install.sh
- Open a terminal
- ./install.sh to install

## Usage (macOS)
Use this to add an image file as the custom icon to a file or folder.
You can also remove the custom icon from a file/folder.

Command: `set-icon`
* `-h` show the help text
* `-image <imagePath>` path to the image to be used for the icon
* `-file <filePath>` path to the file to set the icon
* `-removeCustomIcon` removes the custom icon for the file

Examples:
This sets the image as the custom icon for the file: `set-icon -image /path/to/image -file /path/to/file`

This removes the custom icon from the file: `set-icon -removeCustomIcon -file /path/to/file`

**STILL WORKING ON VIEWING THE DATA OF `data.install`**


### Version Notes
set-icon.macOS version 1.0 for macOS - requires macOS 10.12 or higher

***DISCLAIMER: COMPATIBILITY WITH WINDOWS & LINUX STILL IN PROGRESS***

### License Notes
Modificated macOS edition for macOS 10.12 or higher
- created on Feb 2019 by c0d3d.net
Original "SetIconFile" for Mac OS x 10.4 or higher
- created on July 2010 by Hank McShane
