#!/bin/sh
#
# Firefox ESR (Extended Support Release) - oem - silent install
#
# Make error.sh exactable so it can execut if needed.
chmod +x ./error.sh;
# Download notice.
# printf -- '\n\n%s\n\n\n\n' " Please wait. I am downloading the latest version of Mozilla Firefox Extended Support Release.";
#4-second wait before beginning download. Gives user time to read the above sentence and understand what is happening.
# sleep 4;
# Download using wget with curl failback.
wget -L -O "FirefoxESR.tar.bz2" "https://download.mozilla.org/?product=firefox-esr-latest-ssl&os=linux64" >/dev/null || curl -L -o "FirefoxESR.tar.bz2" "https://download.mozilla.org/?product=firefox-esr-latest-ssl&os=linux64" || /.error.sh ;
# Begin install notice.
# printf -- '\n\n\n%s\n\n' " Installing Mozilla Firefox Extended Support Release.";
# Checks if distro has default opt path and if not found adds opt with default permissions.
mkdir -p -m 755 /opt ;
# Path where to be installed.
mkdir /opt/firefox-esr ;
# Extracts to install path.
tar xjf FirefoxESR.tar.bz2 -C /opt/firefox-esr/ ;
# Required permissions needed for Mozilla Firefox automatic update feature to work.
chmod -R 757 /opt/firefox-esr/firefox/ ;
# Start create icon script.
chmod +x ./icon_extended64.sh ; bash ./icon_extended64.sh ;
# Give time for icon script to complete.
sleep 2;
# Makes icon executable allowing it to run Firefox (which is also executable).
chmod +x Firefox-ESR.desktop ;
# Adds icon to application menu (xfce, gnome, cinnamon, mate, deepin, etc...).
cp Firefox-ESR.desktop /usr/share/applications ;
# Copies desktop icon to all user desktops and grants them ownership (it is their desktop after all).
for destdir in /home/*/Desktop/; do
    cp Firefox-ESR.desktop "$destdir" &&
    chown --reference="$destdir" "$destdir/Firefox-ESR.desktop"
done
printf "\n";
# Adds a desktop icon to all FUTURE new login users (assuming you make any).
mkdir -p /etc/skel/Desktop ; cp Firefox-ESR.desktop /etc/skel/Desktop ;
# Removes the temporary files no longer needed.
rm FirefoxESR.tar.bz2 ; rm Firefox-ESR.desktop ;
# Exit notice.
# printf -- '%s\n' "" "" "" " Congratulations!" \
#  " Mozilla Firefox Extended Support Release is now installed onto your computer." \
#  " Mozilla Firefox Extended Support Release will update itself." \
#  " Happy browsing." "" ""
# exit
exit 0
