#!/bin/sh
#
# Firefox Automatic Install for Linux -- Uninstall Firefox Developer Edition 64-bit -- File can be used independently
#
# Uninstalling Firefox notice
printf -- '\n%s\n' " Uninstalling Firefox Developer Edition";
# Small delay to give user time to read the above notice.
sleep 3;
# Installation
sudo rm -r -f  /opt/firefox-developer-edition/ ;
# Menu shotcuts
sudo rm -r -f /usr/share/applications/Firefox-Developer-Edition.desktop ;
# Desktop shotcuts
sudo rm -r -f /etc/skel/Desktop/Firefox-Developer-Edition.desktop ;
# Current shortcuts
sudo rm -r -f /home/*/Desktop/Firefox-Developer-Edition.desktop ;
#
# Uncomment if you wish to delete file cache.
# sudo rm -r -f /home/*/.cache/mozilla/firefox/*.dev-edition*/ ;
# Uncomment if you wish to delete configuration and profile files.
# sudo rm -r -f /home/*/.mozilla/firefox/*.dev-edition*/ ;
#
# exit notice
printf -- '%s\n' "" "" "" " Thank you for using Mozilla Firefox." \
" Firefox has been deleted and uninstalled. Per your request." \
" Really sorry to see you go. Hope to see you again real soon." "" ""
# exit
exit 0
