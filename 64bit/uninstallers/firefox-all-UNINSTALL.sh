#!/bin/sh
#
# Uninstalling Firefox notice
echo "Uninstalling ALL editons of Mozilla Firefox (64 bit)"; echo; echo;
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
echo; echo; echo "Thank you for using Mozilla Firefox.";
echo "Firefox has been deleted and uninstalled. Per your request.";
echo "Really sorry to see you go. Hope to see you again real soon."; echo; echo;
# Exit
exit 0
