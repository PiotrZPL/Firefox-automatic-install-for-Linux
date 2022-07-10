#!/bin/sh
#
# Uninstalling Firefox notice
clear; echo "Uninstalling Mozilla Firefox ESR edition"; echo; echo;
# Small delay to give user time to read the above notice.
sleep 3;
# Installation
sudo rm -r -f  /opt/firefox-esr/ ;
# Menu shortcuts
sudo rm -r -f /usr/share/applications/Firefox-ESR.desktop ;
# Desktop shortcuts
sudo rm -r -f /etc/skel/Desktop/Firefox-ESR.desktop ;
# Current shortcuts
sudo rm -r -f /home/*/Desktop/Firefox-ESR.desktop ;
# Uncomment if you wish to delete file cache.
# sudo rm -r -f /home/*/.cache/mozilla/firefox/*.default-esr*/ ;
# Uncomment if you wish to delete configuration and profile files.
# sudo rm -r -f /home/*/.mozilla/firefox/*.default-esr*/ ;
echo; echo; echo "Thank you for using Mozilla Firefox.";
echo "Firefox has been deleted and uninstalled. Per your request.";
echo "Really sorry to see you go. Hope to see you again real soon."; echo; echo;
exit 0
