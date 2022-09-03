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
# Purge Firefox notice
printf -- '\n%s\n' " Per your request. Now purging Mozilla Firefox.";
# 10 second delay to give user time to read the above notice.
sleep 3;
# Installation.
sudo rm -r -f /opt/firefox/ ;
sudo rm -r -f /opt/firefox_beta/ ;
sudo rm -r -f /opt/firefox_developer_edition ;
sudo rm -r -f /opt/firefox_nightly/ ;
sudo rm -r -f /opt/firefox_esr/ ;
# Menu shortcuts.
sudo rm -r -f /usr/share/applications/Mozilla_Firefox.desktop ;
sudo rm -r -f /usr/share/applications/Firefox_Beta.desktop ;
sudo rm -r -f /usr/share/applications/Firefox_Developer_Edition.desktop ;
sudo rm -r -f /usr/share/applications/Firefox_Nightly.desktop ;
sudo rm -r -f /usr/share/applications/Firefox_ESR.desktop ;
# Destkop shortcuts.
sudo rm -r -f /etc/skel/Desktop/Mozilla_Firefox.desktop ;
sudo rm -r -f /etc/skel/Desktop/Firefox_Beta.desktop ;
sudo rm -r -f /etc/skel/Desktop/Firefox_Developer_Edition.desktop ;
sudo rm -r -f /etc/skel/Desktop/Firefox_Nightly.desktop ;
sudo rm -r -f /etc/skel/Desktop/Firefox_ESR.desktop ;
# Current desktop shotcuts.
sudo rm -r -f /home/*/Desktop/Mozilla_Firefox.desktop ;
sudo rm -r -f /home/*/Desktop/Firefox_Beta.desktop ;
sudo rm -r -f /home/*/Desktop/Firefox_Developer_Edition.desktop ;
sudo rm -r -f /home/*/Desktop/Firefox_Nightly.desktop ;
sudo rm -r -f /home/*/Desktop/Firefox_ESR.desktop ;
# Cache files. - purge
sudo rm -r -f /home/*/.cache/mozilla/firefox/ ;
# Configuration and profile files. - purge
sudo rm -r -f /home/*/.mozilla/firefox/ ;
# Exit notice.
printf -- '%s\n' "" "" "" " Thank you for using Mozilla Firefox." \
" Firefox, along with all user data, have been deleted and uninstalled. Per your request." \
" Really sorry to see you go. Hope to see you again real soon" "" ""
# Exit
exit 0
# The which is done cannot be un-done. Re-installed, of course, but not un-done.
