# Assuming that when the user downloads the file, it will be here.
unzip -o -C -qq ~/Downloads/set-icon_cross-platform-python/dev/data.install -d /usr/local/bin/
chmod +x /usr/local/bin/set-icon
rm ~/Downloads/set-icon_cross-platform-python/dev/data.install
-image ~/set-icon_cross-platform-python/test/needpix.png
-file ~/set-icon_cross-platform-python/test/index.html
# Sub out these file paths to your liking.
rm sys-chk.py
rm win.cmd
rm mac.sh
