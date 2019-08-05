REM https://www.raymond.cc/blog/how-to-change-the-standard-folder-icon-to-another-icon/
REM https://www.robvanderwoude.com/batchcommands.php
REM could do IF statement on operating system
if [%1] == [] goto:eof
ECHO [.ShellClassInfo] >%1\desktop.in
ECHO IconResource=C:\icon.ico,47 >>%1\desktop.in
move %1\desktop.in %1\desktop.ini
attrib +S +H %1\desktop.ini
attrib +R %1
EXIT
