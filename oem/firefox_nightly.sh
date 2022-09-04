#!/bin/sh
#
# Firefox Automatic Install for Linux - Firefox Nightly - oem - silent install - To be used with error.sh
#
# Make error.sh exactable so it can execut if needed.
chmod +x ./error.sh;
# Download using wget with curl failback.
wget -L -O "FirefoxNightly.tar.bz2" "https://download.mozilla.org/?product=firefox-nightly-latest-ssl&os=linux64" >/dev/null || curl -L -o "FirefoxNightly.tar.bz2" "https://download.mozilla.org/?product=firefox-nightly-latest-ssl&os=linux64" || /.error.sh ;
# Checks if distro has default opt path and if not found adds opt with default permissions.
mkdir -p -m 755 /opt ;
# Path where to be installed.
mkdir /opt/firefox_nightly ;
# Extracts to install path.
tar xjf FirefoxNightly.tar.bz2 -C /opt/firefox_nightly/ ;
# Required permissions needed for Mozilla Firefox automatic update feature to work.
chmod -R 757 /opt/firefox_nightly/firefox/ ;
# Start create icon script.
chmod +x ./icon_nightly64.sh ; bash ./icon_nightly64.sh ;
# Give time for icon script to complete.
sleep 2;
# Makes icon executable allowing it to run Firefox (which is also executable).
chmod +x Firefox_Nightly.desktop ;
# Adds icon to application menu (xfce, gnome, cinnamon, mate, deepin, etc...).
cp Firefox-Nightly.desktop /usr/share/applications ;
# Copies desktop icon to all user desktops and grants them ownership (it is their desktop after all).
find /home/*/Desktop -maxdepth 1 -type d -exec cp Firefox_Nightly.desktop '{}' \; -exec chown --reference='{}' '{}/Firefox_Nightly.desktop' \;
# Adds a desktop icon to all FUTURE new login users (assuming you make any).
mkdir -p /etc/skel/Desktop ; cp Firefox_Nightly.desktop /etc/skel/Desktop ;
# Removes the temporary files no longer needed.
rm FirefoxNightly.tar.bz2 ; rm Firefox_Nightly.desktop ;
# exit
exit 0
