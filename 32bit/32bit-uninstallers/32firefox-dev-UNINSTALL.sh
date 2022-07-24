#!/bin/sh
#
# Uninstalling Firefox notice
echo 'Uninstalling Firefox Developer Edition 32-bit'; echo; echo;
# Small delay to give user time to read the above notice.
sleep 3;
# Installation
sudo rm -r -f  /opt/firefox-developer-edition-32bit/ ;
# Menu shortcuts
sudo rm -r -f /usr/share/applications/Firefox-Developer-Edition-32bit.desktop ;
# Desktop shortcuts
sudo rm -r -f /etc/skel/Desktop/Firefox-Developer-Edition-32bit.desktop ;
# Current desktop shortcuts
sudo rm -r -f /home/*/Desktop/Firefox-Developer-Edition-32bit.desktop ;
#
# Uncomment if you wish to delete file cache.
# sudo rm -r -f /home/*/.cache/mozilla/firefox/*.dev-edition*/ ;
# Uncomment if you wish to delete configuration and profile files.
# sudo rm -r -f /home/*/.mozilla/firefox/*.dev-edition*/ ;
#
# exit notice
echo; echo; echo "Thank you for using Mozilla Firefox.";
echo "Firefox has been deleted and uninstalled. Per your request.";
echo "Really sorry to see you go. Hope to see you again real soon."; echo; echo;
# exit
exit 0
