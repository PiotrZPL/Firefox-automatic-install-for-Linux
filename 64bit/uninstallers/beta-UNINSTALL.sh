#!/bin/bash
#
# That which is done. Cannot be undone. Reinstalled, of course! But not undone.
#
echo
# Uninstalling Firefox notice
echo Uninstalling Firefox (beta edition)
echo
echo
# Installation
sudo rm -r -f  /opt/firefox-beta/
# Menu shortcuts
sudo rm -r -f /usr/share/applications/Firefox-Beta.desktop
# Desktop shortcuts
sudo rm -r -f /etc/skel/Desktop/Firefox-Beta.desktop
# Current desktop shortcuts
rm -r -f /home/$USER/Desktop/Firefox-Beta.desktop
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
