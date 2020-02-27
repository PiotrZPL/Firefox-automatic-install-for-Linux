#!/bin/bash
#
# With great power there must also come great responsibility.
# That which is done. Cannot be undone. Reinstalled, of course! But not undone.
#
echo -n
sudo rm -r -f  /opt/firefox/
echo -n
sudo rm -r -f /usr/share/applications/Firefox.desktop
echo -n
rm -r -f /home/$USER/Desktop/Firefox.desktop
echo -n
#
# Uncomment if you wish to also delete your configuration files too.
# You should only do so if you have NO other installs of Firefox installed
# Or if your previous install(s) were bad due to bad configuration.
#
# rm -r -f /home/$USER/.mozilla/
#
echo -n
echo
echo
echo Thank you for using Mozilla Firefox.
echo Firefox has been deleted and uninstalled. Per your request.
echo Really sorry to see you go.
echo Hope to see you again real soon.
echo
echo
exit 0
