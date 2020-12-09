#!/bin/bash
#
# Installs Mozilla Firefox (extended support release). To be used with Setup.sh
#
# Wait for download notice.
echo "Please wait. I am downloading the latest version of Firefox ESR"; echo;
# 4-second wait before beginning download. Gives user time to read the above sentence and understand what is happening.
sleep 4;
# Download
wget -O FirefoxESR32.tar.bz2 "https://download.mozilla.org/?product=firefox-esr-latest-ssl&os=linux"; echo; echo;
# Begin install notice.
echo "Installing Firefox Extended Support Release";
# Checks if distro has default opt path and if not found adds opt with default permissions.
sudo mkdir -p -m 755 /opt ;
# Path where to be installed.
sudo mkdir /opt/firefox-esr-32bit ;
# Extracts to install path
sudo tar xjf FirefoxESR32.tar.bz2 -C /opt/firefox-esr-32bit/ ;
# Required permissions needed for Mozilla Firefox automatic update feature to work.
sudo chmod -R 757 /opt/firefox-esr-32bit/firefox/ ;
# Start create icon script
chmod +x ./32bit/fesr32-icon.sh ; bash ./32bit/fesr32-icon.sh ;
# Give time for icon script to complete
sleep 2;
# Makes icon executable allowing it to run Firefox (which is also executable).
chmod +x Firefox-ESR-32bit.desktop ;
# Adds icon to application menu (xfce, gnome, cinnamon, mate, deepin, etc...).
sudo cp Firefox-ESR-32bit.desktop /usr/share/applications ;
# Copies desktop icon to all user desktops and grants them ownership (it is their desktop after all).
for destdir in /home/*/Desktop/; do
    cp Firefox-ESR-32bit.desktop "$destdir" &&
    chown --reference="$destdir" "$destdir/Firefox-ESR-32bit.desktop"
done
echo -n;
# Adds a desktop icon to all FUTURE new login users (assuming you make any).
sudo mkdir -p /etc/skel/Desktop ; sudo cp Firefox-ESR-32bit.desktop /etc/skel/Desktop ;
# Removes the temporary files no longer needed.
rm FirefoxESR32.tar.bz2 ; rm Firefox-ESR-32bit.desktop ;
# Exit notice.
echo; echo; echo "Congratulations!";
echo "Firefox ESR is now installed onto your computer.";
echo "Firefox Extended Support Release edition will update itself.";
echo "Happy browsing."; echo; echo;
exit 0
