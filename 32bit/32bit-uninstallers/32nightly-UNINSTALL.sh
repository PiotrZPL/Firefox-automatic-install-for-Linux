#!/bin/bash
#
# That which is done. Cannot be undone. Reinstalled, of course! But not undone.
#
# As noted in dev-doc.txt if you are a developer or enthusiast 
# who installed BOTH the standard editions and 32-bit editions 
# You will, of course, need to edit and match the shortcuts with your intstall.
#
# Normal home end-users who have NOT installed both need not worry.
#
echo
# Installation
sudo rm -r -f  /opt/firefox-nightly-32bit/
# Menu shortcuts
sudo rm -r -f /usr/share/applications/Firefox-Nightly.desktop
# Desktop shortcuts
sudo rm -r -f /etc/skel/Desktop/Firefox-Nightly.desktop
# Current shortcuts
rm -r -f /home/$USER/Desktop/Firefox-Nightly.desktop
#
# Uncomment if you wish to also delete your configuration files too.
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
