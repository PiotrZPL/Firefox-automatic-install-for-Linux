#!/bin/sh
#
# Firefox Automatic Install for Linux -- Uninstall ALL 64-bit editions -- File can be used independently.
#
# Uninstalling Firefox notice
printf -- '\n%s\n' " Uninstalling ALL releases of Mozilla Firefox 64-bit";
# Small delay to give user time to read the above notice.
sleep 3;
# Installation
sudo rm -r -f /opt/firefox/ ;
sudo rm -r -f /opt/firefox-beta/ ;
sudo rm -r -f /opt/firefox-developer-edition ;
sudo rm -r -f /opt/firefox-nightly/ ;
sudo rm -r -f /opt/firefox-esr/ ;
# Menu shortcuts
sudo rm -r -f /usr/share/applications/Mozilla-Firefox.desktop ;
sudo rm -r -f /usr/share/applications/Firefox-Beta.desktop ;
sudo rm -r -f /usr/share/applications/Firefox-Developer-Edition.desktop ;
sudo rm -r -f /usr/share/applications/Firefox-Nightly.desktop ;
sudo rm -r -f /usr/share/applications/Firefox-ESR.desktop ;
# Destkop shortcuts
sudo rm -r -f /etc/skel/Desktop/Mozilla-Firefox.desktop ;
sudo rm -r -f /etc/skel/Desktop/Firefox-Beta.desktop ;
sudo rm -r -f /etc/skel/Desktop/Firefox-Developer-Edition.desktop ;
sudo rm -r -f /etc/skel/Desktop/Firefox-Nightly.desktop ;
sudo rm -r -f /etc/skel/Desktop/Firefox-ESR.desktop ;
# Current desktop shotcuts
sudo rm -r -f /home/*/Desktop/Mozilla-Firefox.desktop ;
sudo rm -r -f /home/*/Desktop/Firefox-Beta.desktop ;
sudo rm -r -f /home/*/Desktop/Firefox-Developer-Edition.desktop ;
sudo rm -r -f /home/*/Desktop/Firefox-Nightly.desktop ;
sudo rm -r -f /home/*/Desktop/Firefox-ESR.desktop ;
# Cache files
# sudo rm -r -f /home/*/.cache/mozilla/firefox/ ;
# Configuration and profile files.
# sudo rm -r -f /home/*/.mozilla/firefox/ ;
# Exit notice
printf -- '%s\n' "" "" "" " Thank you for using Mozilla Firefox." \
" Firefox has been deleted and uninstalled. Per your request." \
" Really sorry to see you go. Hope to see you again real soon." "" ""
# Exit
exit 0
