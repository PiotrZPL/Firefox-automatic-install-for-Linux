#!/bin/bash
# 
# This will uninstall and remove ALL editions of Firefox. Use with care.
# That which is done. Cannot be undone. Reinstalled, of course! But not undone.
#
echo
sudo rm -r -f  /opt/firefox/
sudo rm -r -f  /opt/firefox-beta/
sudo rm -r -f  /opt/firefox-developer-edition
sudo rm -r -f  /opt/firefox-nightly/
echo -n
sudo rm -r -f /usr/share/applications/Firefox.desktop
sudo rm -r -f /usr/share/applications/Firefox-Beta.desktop
sudo rm -r -f /usr/share/applications/Firefox-Developer-Edition.desktop
sudo rm -r -f /usr/share/applications/Firefox-Nightly.desktop
echo -n
rm -r -f /home/$USER/Desktop/Firefox.desktop
rm -r -f /home/$USER/Desktop/Firefox-Beta.desktop
rm -r -f /home/$USER/Desktop/Firefox-Developer-Edition.desktop
rm -r -f /home/$USER/Desktop/Firefox-Nightly.desktop
#
# Uncomment if you wish to also delete your configuration files too.
# You should only do so if you have NO other installs of Firefox installed
# Or if your previous install(s) were bad due to bad configuration.
#
# rm -r -f /home/$USER/.mozilla/
#
echo
echo
echo Thank you for using Mozilla Firefox.
echo Firefox has been deleted and uninstalled. Per your request.
echo Really sorry to see you go.
echo
echo
exit 0
