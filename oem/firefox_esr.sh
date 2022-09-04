#!/bin/sh
#
# Firefox Automatic Install for Linux - Firefox ESR (Extended Support Release) - oem - silent install - To be used with error.sh
#
# Make error.sh exactable so it can execut if needed.
chmod +x ./error.sh;
# Download using wget with curl failback.
wget -L -O "FirefoxESR.tar.bz2" "https://download.mozilla.org/?product=firefox-esr-latest-ssl&os=linux64" >/dev/null || curl -L -o "FirefoxESR.tar.bz2" "https://download.mozilla.org/?product=firefox-esr-latest-ssl&os=linux64" || /.error.sh ;
# Checks if distro has default opt path and if not found adds opt with default permissions.
mkdir -p -m 755 /opt ;
# Path where to be installed.
mkdir /opt/firefox_esr ;
# Extracts to install path.
tar xjf FirefoxESR.tar.bz2 -C /opt/firefox_esr/ ;
# Required permissions needed for Mozilla Firefox automatic update feature to work.
chmod -R 757 /opt/firefox_esr/firefox/ ;
# Start create icon script.
chmod +x ./icon_extended64.sh ; bash ./icon_extended64.sh ;
# Give time for icon script to complete.
sleep 2;
# Makes icon executable allowing it to run Firefox (which is also executable).
chmod +x Firefox_ESR.desktop ;
# Adds icon to application menu (xfce, gnome, cinnamon, mate, deepin, etc...).
cp Firefox_ESR.desktop /usr/share/applications ;
# Copies desktop icon to all user desktops and grants them ownership (it is their desktop after all).
find /home/*/Desktop -maxdepth 1 -type d -exec cp Firefox_ESR.desktop '{}' \; -exec chown --reference='{}' '{}/Firefox_ESR.desktop' \;
# Adds a desktop icon to all FUTURE new login users (assuming you make any).
mkdir -p /etc/skel/Desktop ; cp Firefox_ESR.desktop /etc/skel/Desktop ;
# Removes the temporary files no longer needed.
rm FirefoxESR.tar.bz2 ; rm Firefox_ESR.desktop ;
# exit
exit 0
