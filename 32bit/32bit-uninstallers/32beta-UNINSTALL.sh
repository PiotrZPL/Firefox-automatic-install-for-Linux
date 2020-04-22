#!/bin/bash
#
# As noted in dev-doc.txt if you are a developer or enthusiast 
# who installed BOTH the standard editions and 32-bit editions 
# You will, of course, need to edit and match the shortcuts with your intstall.
#
# Normal home end-users who have NOT installed both need not worry.
echo
# Uninstalling Firefox notice
echo 'Uninstalling Firefox (beta edition)'
echo
echo
# Installation
sudo rm -r -f  /opt/firefox-beta-32bit/
# Menu icons
sudo rm -r -f /usr/share/applications/Firefox-Beta.desktop
# Desktop icons
sudo rm -r -f /etc/skel/Desktop/Firefox-Beta.desktop
# Current desktop icons
rm -r -f /home/$USER/Desktop/Firefox-Beta.desktop
#
# Uncomment if you wish to also delete your configuration and profile files.
# You should only do so if you have NO other installs of Firefox installed
# Or if your previous install(s) were bad due to bad configuration.
#
# rm -r -f /home/$USER/.mozilla/
# rm -r -f /home/$USER/.cache/mozilla/
echo
echo
echo Thank you for using Mozilla Firefox.
echo Firefox has been deleted and uninstalled. Per your request.
echo Really sorry to see you go.
echo Hope to see you again real soon.
echo
echo
exit 0
