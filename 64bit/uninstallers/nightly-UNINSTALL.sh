#!/bin/bash
#
# Uninstalling Firefox notice
echo
 while true; do
    read -p "Are you sure you wish to remove and delete 
Mozilla Firefox Nightly release from your computer?" yn
    case $yn in
        [Yy]* ) clear; echo "Uninstalling Firefox Nightly release"; echo; echo;
# Small delay to give user time to read the above notice.
sleep 3;
# Installation
sudo rm -r -f  /opt/firefox-nightly/ ;
# Menu shortcuts
sudo rm -r -f /usr/share/applications/Firefox-Nightly.desktop ;
# Destkop shortcuts
sudo rm -r -f /etc/skel/Desktop/Firefox-Nightly.desktop ;
# Current desktop shotcuts
sudo rm -r -f /home/*/Desktop/Firefox-Nightly.desktop ;
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
