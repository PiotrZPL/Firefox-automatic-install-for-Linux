#!/bin/sh
#
# Firefox Automatic Install for Linux - Firefox Developer Edition - oem - silent install - To be used with error.sh
#
# Make error.sh exactable so it can execut if needed.
chmod +x ./error.sh;
# Download using wget with curl failback.
wget -L -O "FirefoxDeveloperEdition.tar.bz2" "https://download.mozilla.org/?product=firefox-devedition-latest-ssl&os=linux64" >/dev/null || curl -L -o "FirefoxDeveloperEdition.tar.bz2" "https://download.mozilla.org/?product=firefox-devedition-latest-ssl&os=linux64" || /.error.sh ;
# Checks if distro has default opt path and if not found adds opt with default permissions.
mkdir -p -m 755 /opt ;
# Path where to be installed.
mkdir /opt/firefox_developer_edition ;
# Extracts to install path
tar xjf FirefoxDeveloperEdition.tar.bz2 -C /opt/firefox_developer_edition/ ;
# Required permissions needed for Mozilla Firefox automatic update feature to work.
chmod -R 757 /opt/firefox_developer_edition/firefox/ ;
# Start create icon script.
chmod +x ./icon_developer64.sh ; bash ./icon_developer64.sh ;
# Give time for icon script to complete.
sleep 2;
# Makes icon executable allowing it to run Firefox (which is also executable).
chmod +x Firefox_Developer_Edition.desktop ;
# Adds icon to application menu (xfce, gnome, cinnamon, mate, deepin, etc...).
cp Firefox_Developer_Edition.desktop /usr/share/applications ;
# Copies desktop icon to all user desktops and grants them ownership (it is their desktop after all).
find /home/*/Desktop -maxdepth 1 -type d -exec cp Firefox_Developer_Edition.desktop '{}' \; -exec chown --reference='{}' '{}/Firefox_Developer_Edition.desktop' \;
# Adds a desktop icon to all FUTURE new login users (assuming you make any).
mkdir -p /etc/skel/Desktop ; cp Firefox_Developer_Edition.desktop /etc/skel/Desktop ;
# Removes the temporary files no longer needed.
rm FirefoxDeveloperEdition.tar.bz2 ; rm Firefox_Developer_Edition.desktop ;
# exit
exit 0
