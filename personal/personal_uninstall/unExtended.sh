#!/bin/sh
#
# Firefox Automatic Install for Linux -- Personal Uninstall Firefox ESR -- File can be used independently.
#
# Uninstalling Firefox notice
printf -- '\n%s\n' " Uninstalling your personal copy of Mozilla Firefox ESR";
# Small delay to give user time to read the above notice.
sleep 3;
# Installation
rm -r -f  /home/$USER/Mozilla/firefox_esr/ ;
# Menu shortcut
rm -r -f /home/$USER/.local/share/applications/Firefox_ESR.desktop ;
# Desktop shortcut
rm -r -f /home/$USER/Desktop/Firefox_ESR.desktop ;
#
# Uncomment if you wish to delete file cache.
# rm -r -f /home/$USER/.cache/mozilla/firefox/*.default-esr*/ ;
# Uncomment if you wish to delete configuration and profile files.
# rm -r -f /home/$USER/.mozilla/firefox/*.default-esr*/ ;
#
# exit notice
printf -- '%s\n' "" "" "" " Thank you for using Mozilla Firefox." \
" Firefox has been deleted and uninstalled. Per your request." \
" Really sorry to see you go. Hope to see you again real soon." "" ""
#exit
exit 0
