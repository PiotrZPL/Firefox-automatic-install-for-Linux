#!/bin/bash
#
# With great power there must also come great responsibility.
# That which is done. Cannot be undone. Reinstalled, of course! But not undone.
#
echo
sudo rm -r -f  /opt/firefox-esr/
sudo rm -r -f /usr/share/applications/Firefox-ESR.desktop
sudo rm -r -f /etc/skel/Desktop/Firefox-ESR.desktop
rm -r -f /home/$USER/Desktop/Firefox-ESR.desktop
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
echo Firefox ESR has been deleted and uninstalled. Per your request.
echo Really sorry to see you go.
echo Hope to see you again real soon.
echo
echo
exit 0
