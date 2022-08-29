#!/bin/sh
#
# Firefox Automatic Install for Linux -- PRUGE file -- Can be used independently.
#
# Purge - To remove all copies of Mozilla Firefox installed by this development
#         BUT will also remove ALL cache and configuration files for 
#         ALL copies of Mozilla Firefox for ALL users on your computer. 
#
# That which is done cannot be un-done. Re-installed, of course, but not un-done. 
#
# Uninstalling Firefox notice
printf -- '%s\n' "    P U R G E" \
 " " \
 " You have selected PURGE." \
 " "\
 " Per your resust, all editions of Mozilla Firefox will now be removed from your computer." \
 " Addionally, all configuration files and all cache files for" \
 " all copies Firefox for all users on your computer will now be deleted." \
 " This gives you a fresh and clean slate." \
 "" ""
# 10 second delay to give user time to read the above notice
sleep 10;
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
sudo rm -r -f /home/*/.cache/mozilla/firefox/ ;
# Configuration and profile files.
sudo rm -r -f /home/*/.mozilla/firefox/ ;
# Exit notice
printf -- '%s\n' "" "" "" " Thank you for using Mozilla Firefox." \
" Firefox, along with all user data, have been deleted and uninstalled. Per your request." \
" Really sorry to see you go. Hope to see you again real soon" "" ""
# Exit
exit 0
# The which is done cannot be un-done. Re-installed, of course, but not un-done. 
