#!/bin/sh
#
# Firefox Automatic Install for Linux -- PRUGE file -- Can be used independently.
#
# Purge - To remove all copies of Mozilla Firefox installed by this development
#         BUT will also remove ALL cache and configuration files for 
#         ALL copies of Mozilla Firefox for ALL users on your computer. 
#
# That which is done cannot be un-done. Re-installed, of course, but not un-done. 

# Purge Firefox notice
printf -- '\n%s\n' " Per your request. Now purging Mozilla Firefox 32-bit.";

# 3 second delay to give user time to read the above notice.
sleep 3;

# Installation
sudo rm -r -f /opt/Mozilla_Firefox32/ ;
sudo rm -r -f /opt/Mozilla_Firefox_Beta32/ ;
sudo rm -r -f /opt/Mozilla_Firefox_Developer_Edition32/ ;
sudo rm -r -f /opt/Mozilla_Firefox_Nightly32/ ;
sudo rm -r -f /opt/Mozilla_Firefox_Extended_Support_Release32/ ;

# Menu shortcuts
sudo rm -r -f /usr/share/applications/Mozilla_Firefox32.desktop ;
sudo rm -r -f /usr/share/applications/Mozilla_Firefox_Beta32.desktop ;
sudo rm -r -f /usr/share/applications/Mozilla_Firefox_Developer_Edition32.desktop ;
sudo rm -r -f /usr/share/applications/Mozilla_Firefox_Nightly32.desktop ;
sudo rm -r -f /usr/share/applications/Mozilla_Firefox_Extended_Support_Release32.desktop ;

# Destkop shortcuts
sudo rm -r -f /etc/skel/Desktop/Mozilla_Firefox32.desktop ;
sudo rm -r -f /etc/skel/Desktop/Mozilla_Firefox_Beta32.desktop ;
sudo rm -r -f /etc/skel/Desktop/Mozilla_Firefox_Developer_Edition32.desktop ;
sudo rm -r -f /etc/skel/Desktop/Mozilla_Firefox_Nightly32.desktop ;
sudo rm -r -f /etc/skel/Desktop/Mozilla_Firefox_Extended_Support_Release32.desktop ;

# determine the XDG_DESKTOP_DIR, then the DESKTOP_NAME for multi language support, this assumes, that every user has the same locale or Desktop Name
DESKTOP_NAME=$(basename "$(sudo xdg-user-dir DESKTOP)")
# Current desktop shotcuts
sudo rm -r -f /home/*/"$DESKTOP_NAME"/Mozilla_Firefox32.desktop ;
sudo rm -r -f /home/*/"$DESKTOP_NAME"/Mozilla_Firefox_Beta32.desktop ;
sudo rm -r -f /home/*/"$DESKTOP_NAME"/Mozilla_Firefox_Developer_Edition32.desktop ;
sudo rm -r -f /home/*/"$DESKTOP_NAME"/Mozilla_Firefox_Nightly32.desktop ;
sudo rm -r -f /home/*/"$DESKTOP_NAME"/Mozilla_Firefox_Extended_Support_Release32.desktop ;

    # PURGE
    # Cache files
sudo rm -r -f /home/*/.cache/mozilla/firefox/ ;
    # Configuration and profile files.
sudo rm -r -f /home/*/.mozilla/firefox/ ;


# Exit notice.
printf -- '%s\n' "" "" "" " Thank you for using Mozilla Firefox." \
" Firefox, along with all user data, have been deleted and uninstalled. Per your request." \
" Really sorry to see you go. Hope to see you again real soon" "" ""

# Exit
exit 0

# The which is done cannot be un-done. Re-installed, of course, but not un-done.
