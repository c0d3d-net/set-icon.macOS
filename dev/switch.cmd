REM https://www.raymond.cc/blog/how-to-change-the-standard-folder-icon-to-another-icon/
if [%1] == [] goto:eof
ECHO [.ShellClassInfo] >%1\desktop.in
ECHO IconResource=C:\set-icon_cross-platform-master\test\needpix.png >>%1\desktop.in
REM ^ENTER DESIRED FILE PATH ABOVE^
move %1\desktop.in %1\desktop.ini
attrib +S +H %1\desktop.ini
attrib +R %1
EXIT
