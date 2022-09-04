#!/bin/sh
#
# Firefox Automatic Install for Linux -- Uninstall ALL 32-bit editions -- File can be used independently.
#
# Uninstalling Firefox notice
printf -- '\n%s\n' " Uninstalling ALL releases of Mozilla Firefox 32-bit";
# Small delay to give user time to read the above notice.
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
# Uncommend to enable PURGE - Cache files (all users).
#sudo rm -r -f /home/*/.cache/mozilla/firefox/ ;
# Uncommend to enable PUEGE - Configuration and profile files (all users).
#sudo rm -r -f /home/*/.mozilla/firefox/ ;
# exit notice
printf -- '%s\n' "" "" "" " Thank you for using Mozilla Firefox." \
" Firefox has been deleted and uninstalled. Per your request." \
" Really sorry to see you go. Hope to see you again real soon." "" ""
# exit
exit 0
