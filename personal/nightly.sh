#!/bin/bash
#
# Firefox Nightly - personal - silent install
#
# Download.
wget -O FirefoxNightly.tar.bz2 "https://download.mozilla.org/?product=firefox-nightly-latest-ssl&os=linux64";
# Checks if distro has default opt path and if not found adds opt with default permissions.
mkdir -p -m 755 /home/$USER/Mozilla ;
# Path where to be installed.
mkdir /home/$USER/Mozilla/firefox-nightly ;
# Extracts to install path.
tar xjf FirefoxNightly.tar.bz2 -C /home/$USER/Mozilla/firefox-nightly/ ;
# Required permissions needed for Mozilla Firefox automatic update feature to work.
chmod -R 757 /home/$USER/Mozilla/firefox-nightly/firefox/ ;
# Start create icon script.
chmod +x ./fn64-icon.sh ; bash ./fn64-icon.sh ;
# Give time for icon script to complete.
sleep 2;
# Makes icon executable allowing it to run Firefox (which is also executable).
chmod +x Firefox-Nightly.desktop ;
# Adds icon to application menu (xfce, gnome, cinnamon, mate, deepin, etc...).
cp Firefox-Nightly.desktop /home/$USER/.local/share/applications/ ;
# Copies desktop icon to user desktop and grants them ownership (it is their desktop after all).
for destdir in /home/$USER/Desktop/; do
    cp Firefox-Nightly.desktop "$destdir" &&
    chown --reference="$destdir" "$destdir/Firefox-Nightly.desktop"
done
echo -n;
# Removes the temporary files no longer needed.
rm FirefoxNightly.tar.bz2 ; rm Firefox-Nightly.desktop ;
# Exit
exit 0
