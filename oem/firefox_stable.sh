#!/bin/sh
#
# Firefox Automatic Install for Lnux  - Firefox (current stable edition) - oem - silent install - To be used with error.sh
#
# Make error.sh exactable so it can execut if needed.
chmod +x ./error.sh;
# Download using wget with curl failback.
wget -L -O "FirefoxStable.tar.bz2" "https://download.mozilla.org/?product=firefox-latest-ssl&os=linux64" >/dev/null || curl -L -o "FirefoxStable.tar.bz2" "https://download.mozilla.org/?product=firefox-latest-ssl&os=linux64" || /.error.sh ;
# Checks if distro has default opt path and if not found adds opt with default permissions.
mkdir -p -m 755 /opt ;
# Extracts to install path
tar xjf FirefoxStable.tar.bz2 -C /opt/ ;
# Required permissions needed for Mozilla Firefox automatic update feature to work.
chmod -R 757 /opt/firefox/ ;
# Start create icon script
chmod +x ./icon_firefox64.sh ; bash ./icon_firefox64.sh ;
# Give time for icon script to complete
sleep 2;
# Makes icon executable allowing it to run Firefox (which is also executable).
chmod +x Mozilla_Firefox.desktop ;
# Adds icon to application menu (xfce, gnome, cinnamon, mate, deepin, etc...).
cp Mozilla_Firefox.desktop /usr/share/applications ;
# Copies desktop icon to all user desktops and grants them ownership (it is their desktop after all).
find /home/*/Desktop -maxdepth 1 -type d -exec cp Mozilla_Firefox.desktop '{}' \; -exec chown --reference='{}' '{}/Mozilla_Firefox.desktop' \;
# Adds a desktop icon to all FUTURE new login users (assuming you make any).
mkdir -p /etc/skel/Desktop ; cp Mozilla_Firefox.desktop /etc/skel/Desktop ;
# Removes the temporary files no longer needed.
rm FirefoxStable.tar.bz2 ; rm Mozilla_Firefox.desktop ;
# exit
exit 0
