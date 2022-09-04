#!/bin/sh
#
# Firefox Automatic Install for Linux -- Personal Uninstall Firefox (stable) -- File can be used independently.
#
# Uninstalling Firefox notice
printf -- '\n%s\n' " Uninstalling your personal copy of Mozilla Firefox (stable release) ";
# Small delay to give user time to read the above notice.
sleep 3;
# Installation
rm -r -f  /home/$USER/Mozilla/firefox/ ;
# Menu shortcuts
sudo rm -r -f /home/$USER/.local/share/applications/Mozilla_Firefox.desktop ;
# Current desktop shortcuts
sudo rm -r -f /home/$USER/Desktop/Mozilla_Firefox.desktop ;
#
# Uncomment if you wish to delete file cache.
# rm -r -f /home/$USER/.cache/mozilla/firefox/*.default-release*/ ;
# Uncomment if you wish to delete configuration and profile files.
# rm -r -f /home/$USER/.mozilla/firefox/*.default-release*/ ;
#
# exit notice
printf -- '%s\n' "" "" "" " Thank you for using Mozilla Firefox." \
" Firefox has been deleted and uninstalled. Per your request." \
"Really sorry to see you go. Hope to see you again real soon." "" ""
# exit
exit 0
