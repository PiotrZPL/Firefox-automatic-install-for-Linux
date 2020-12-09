#!/bin/bash
#
# Uninstalling Firefox notice
echo
 while true; do
    read -p "This will REMOVE ALL releases of Mozilla Firefox on your computer.
    
Firefox
Firefox Beta
Firefox Developer Edition
Firefox Nightly
Firefox Extended Support Release

That which is done cannot be undone —reinstalled, of course! But not undone.

Are you sure wish to REMOVE ALL releases of 
Mozilla Firefox on your computer?" yn
    case $yn in
        [Yy]* ) clear; echo "Uninstalling ALL editons of Mozilla Firefox (64 bit)"; echo; echo;
# Small delay to give user time to read the above notice.
sleep 3;
# Installation
sudo rm -r -f /opt/firefox/ ;
sudo rm -r -f /opt/firefox-beta/ ;
sudo rm -r -f /opt/firefox-developer-edition ;
sudo rm -r -f /opt/firefox-nightly/ ;
sudo rm -r -f /opt/firefox-esr/ ;
# Menu shortcuts
sudo rm -r -f /usr/share/applications/Firefox.desktop ;
sudo rm -r -f /usr/share/applications/Firefox-Beta.desktop ;
sudo rm -r -f /usr/share/applications/Firefox-Developer-Edition.desktop ;
sudo rm -r -f /usr/share/applications/Firefox-Nightly.desktop ;
sudo rm -r -f /usr/share/applications/Firefox-ESR.desktop ;
# Destkop shortcuts
sudo rm -r -f /etc/skel/Desktop/Firefox.desktop ;
sudo rm -r -f /etc/skel/Desktop/Firefox-Beta.desktop ;
sudo rm -r -f /etc/skel/Desktop/Firefox-Developer-Edition.desktop ;
sudo rm -r -f /etc/skel/Desktop/Firefox-Nightly.desktop ;
sudo rm -r -f /etc/skel/Desktop/Firefox-ESR.desktop ;
# Current desktop shotcuts
rm -r -f /home/$USER/Desktop/Firefox.desktop ;
rm -r -f /home/$USER/Desktop/Firefox-Beta.desktop ;
rm -r -f /home/$USER/Desktop/Firefox-Developer-Edition.desktop ;
rm -r -f /home/$USER/Desktop/Firefox-Nightly.desktop ;
rm -r -f /home/$USER/Desktop/Firefox-ESR.desktop ;
# Uncomment if you wish to also delete your configuration and profile files.
# rm -r -f /home/$USER/.mozilla/ ;
# rm -r -f /home/$USER/.cache/mozilla/ ;
echo; echo; echo "Thank you for using Mozilla Firefox.";
echo "Firefox has been deleted and uninstalled. Per your request.";
echo "Really sorry to see you go. Hope to see you again real soon."; echo; echo; break ;;
        [Nn]* ) echo; echo "You said, NO. Nothing has changed at this time."; echo; echo; exit;;
        * ) echo "Please answer yes or no.";;
    esac
done
exit 0
