#!/bin/sh
#
# Firefox Automatic Install for Linux -- Uninstall Firefox (stable) -- File can be used independently.
#
# Uninstalling Firefox notice
printf -- '\n%s\n' " Uninstalling Mozilla Firefox stable release";
# Small delay to give user time to read the above notice.
sleep 3;
# Installation
sudo rm -r -f  /opt/firefox/ ;
# Menu shortcuts
sudo rm -r -f /usr/share/applications/Mozilla_Firefox.desktop ;
# Desktop shortcuts
sudo rm -r -f /etc/skel/Desktop/Mozilla_Firefox.desktop ;
# Current desktop shortcuts
sudo rm -r -f /home/*/Desktop/Mozilla_Firefox.desktop ;
#
# Uncomment if you wish to delete file cache.
# sudo rm -r -f /home/*/.cache/mozilla/firefox/*.default-release*/ ;
# Uncomment if you wish to delete configuration and profile files.
# sudo rm -r -f /home/*/.mozilla/firefox/*.default-release*/ ;
#
# exit notice
printf -- '%s\n' "" "" "" " Thank you for using Mozilla Firefox." \
" Firefox has been deleted and uninstalled. Per your request." \
"Really sorry to see you go. Hope to see you again real soon." "" ""
# exit
exit 0
