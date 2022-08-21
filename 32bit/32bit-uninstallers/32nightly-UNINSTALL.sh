
#!/bin/sh
#
# Firefox Automatic Install for Linux -- Uninstall Firefox Nightly 32-bit -- File can be used independently
#
# Uninstalling Firefox notice
printf -- '\n\n%s\n\n\n\n' " Uninstalling Firefox Nightly 32-bit release";
# Small delay to give user time to read the above notice.
sleep 3;
# Installation
sudo rm -r -f  /opt/firefox-nightly-32bit/ ;
# Menu shortcuts
sudo rm -r -f /usr/share/applications/Firefox-Nightly-32bit.desktop ;
# Desktop shortcuts
sudo rm -r -f /etc/skel/Desktop/Firefox-Nightly-32bit.desktop ;
# Current shortcuts
sudo rm -r -f /home/*/Desktop/Firefox-Nightly-32bit.desktop ;
#
# Uncomment if you wish to delete file cache.
# sudo rm -r -f /home/*/.cache/mozilla/firefox/*.default-nightly*/ ;
# Uncomment if you wish to delete configuration and profile files.
# sudo rm -r -f /home/*/.mozilla/firefox/*.default-nightly*/ ;
#
# exit notice
printf -- '%s\n' "" "" "" "Thank you for using Mozilla Firefox." \
"Firefox has been deleted and uninstalled. Per your request." \
"Really sorry to see you go. Hope to see you again real soon." "" ""
# exit
exit 0
