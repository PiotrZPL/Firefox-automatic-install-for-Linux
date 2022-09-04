#!/bin/sh
#
# Firefox Automatic Install for Linux -- Personal Uninstall Firefox Nightly 64-bit -- File can be used independently
#
# Uninstalling Firefox notice
printf -- '\n%s\n' " Uninstalling your personal copy of Firefox Nightly.";
# Small delay to give user time to read the above notice.
sleep 3;
# Installation
rm -r -f  /home/$USER/Mozilla/firefox_nightly/ ;
# Menu shortcut
rm -r -f /home/$USER/.local/share/applications/Firefox_Nightly.desktop ;
# Destkop shortcut
rm -r -f /home/$USER/Desktop/Firefox_Nightly.desktop ;
#
# Uncomment if you wish to delete file cache.
# rm -r -f /home/$USER/.cache/mozilla/firefox/*.default-nightly*/ ;
# Uncomment if you wish to delete configuration and profile files.
# rm -r -f /home/$USER/.mozilla/firefox/*.default-nightly*/ ;
#
# exit notice
printf -- '%s\n' "" "" "" " Thank you for using Mozilla Firefox." \
" Firefox has been deleted and uninstalled. Per your request." \
" Really sorry to see you go. Hope to see you again real soon." "" ""
# exit
exit 0
