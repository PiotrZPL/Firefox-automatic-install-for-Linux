#!/bin/sh
#
# Firefox Automatic Install for Linux - Firefox Beta - oem - silent install - To be used with error.sh
#
# Make error.sh exactable so it can execut if needed.
chmod +x ./error.sh;
# Download using wget with curl failback.
wget -L -O "FirefoxBeta.tar.bz2" "https://download.mozilla.org/?product=firefox-beta-latest-ssl&os=linux64" >/dev/null || curl -L -o "FirefoxBeta.tar.bz2" "https://download.mozilla.org/?product=firefox-beta-latest-ssl&os=linux64" || /.error.sh ;
# Checks if distro has default opt path and if not found adds opt with default permissions.
mkdir -p -m 755 /opt ;
# Path where to be installed.
mkdir /opt/firefox_beta ;
# Extracts to install path.
tar xjf FirefoxBeta.tar.bz2 -C /opt/firefox_beta/ ;
# Required permissions needed for Mozilla Firefox automatic update feature to work.
chmod -R 757 /opt/firefox_beta/firefox/ ;
# Start create icon script.
chmod +x ./icon_beta64.sh ; bash ./icon_beta64.sh ;
# Give time for icon script to complete.
sleep 2;
# Makes icon executable allowing it to run Firefox (which is also executable).
chmod +x Firefox_Beta.desktop ;
# Adds icon to application menu (xfce, gnome, cinnamon, mate, deepin, etc...).
cp Firefox_Beta.desktop /usr/share/applications ;
# Copies desktop icon to all user desktops and grants them ownership (it is their desktop after all).
for destdir in /home/*/Desktop/; do
    cp Firefox_Beta.desktop "$destdir" &&
    chown --reference="$destdir" "$destdir/Firefox_Beta.desktop"
done
printf "\n";
# Adds a desktop icon to all FUTURE new login users (assuming you make any).
mkdir -p /etc/skel/Desktop ; cp Firefox_Beta.desktop /etc/skel/Desktop ;
# Removes the temporary files no longer needed.
rm FirefoxStable.tar.bz2 ; rm Firefox_Beta.desktop ;
# exit
exit 0
