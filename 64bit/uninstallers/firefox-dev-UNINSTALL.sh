#!/bin/bash
#
echo
# Uninstalling Firefox notice
echo 'Uninstalling Firefox (developer edition)'
echo
echo
# Installation
sudo rm -r -f  /opt/firefox-developer-edition/
# Menu shotcuts
sudo rm -r -f /usr/share/applications/Firefox-Developer-Edition.desktop
# Desktop shotcuts
sudo rm -r -f /etc/skel/Desktop/Firefox-Developer-Edition.desktop
# Current shortcuts
rm -r -f /home/$USER/Desktop/Firefox-Developer-Edition.desktop
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
