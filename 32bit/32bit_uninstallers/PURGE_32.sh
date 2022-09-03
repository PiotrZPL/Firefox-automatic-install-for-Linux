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
# 10 second delay to give user time to read the above notice
sleep 3;
# Installation
sudo rm -r -f /opt/firefox_32bit/ ;
sudo rm -r -f /opt/firefox_beta_32bit/ ;
sudo rm -r -f /opt/firefox_developer_edition_32bit/ ;
sudo rm -r -f /opt/firefox_nightly_32bit/ ;
sudo rm -r -f /opt/firefox_esr_32bit/ ;
# Menu shotcuts
sudo rm -r -f /usr/share/applications/Firefox_32bit.desktop ;
sudo rm -r -f /usr/share/applications/Firefox_Beta_32bit.desktop ;
sudo rm -r -f /usr/share/applications/Firefox_Developer_Edition_32bit.desktop ;
sudo rm -r -f /usr/share/applications/Firefox_Nightly_32bit.desktop ;
sudo rm -r -f /usr/share/applications/Firefox_ESR_32bit.desktop ;
# Desktop shortcuts
sudo rm -r -f /etc/skel/Desktop/Firefox_32bit.desktop ;
sudo rm -r -f /etc/skel/Desktop/Firefox_Beta_32bit.desktop ;
sudo rm -r -f /etc/skel/Desktop/Firefox_Developer_Edition_32bit.desktop ;
sudo rm -r -f /etc/skel/Desktop/Firefox_Nightly_32bit.desktop ;
sudo rm -r -f /etc/skel/Desktop/Firefox_ESR_32bit.desktop ;
# Current deskop shortcuts
sudo rm -r -f /home/*/Desktop/Firefox_32bit.desktop ;
sudo rm -r -f /home/*/Desktop/Firefox_Beta_32bit.desktop ;
sudo rm -r -f /home/*/Desktop/Firefox_Developer_Edition_32bit.desktop ;
sudo rm -r -f /home/*/Desktop/Firefox_Nightly_32bit.desktop ;
sudo rm -r -f /home/*/Desktop/Firefox_ESR_32bit.desktop ;
# Cache files - purge
sudo rm -r -f /home/*/.cache/mozilla/firefox/ ;
# Configuration and profile files. - purge
sudo rm -r -f /home/*/.mozilla/firefox/ ;
# exit notice
printf -- '%s\n' "" "" "" " Thank you for using Mozilla Firefox." \
" Firefox, along with all user data, have been deleted and uninstalled. Per your request." \
" Really sorry to see you go. Hope to see you again real soon" "" ""
# exit
exit 0
# The which is done cannot be un-done. Re-installed, of course, but not un-done.
