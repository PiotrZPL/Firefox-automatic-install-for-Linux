#!/bin/sh
#
# Installs Mozilla Firefox (nightly release). To be used with Setup.sh
#
# Make error.sh exactable so it can execut if needed.
chmod +x ./64bit/error.sh;
# Download notice.
printf -- '\n%s\n' " Please wait. I am downloading the latest version of Mozilla Firefox Nightly.";
#4-second wait before beginning download. Gives user time to read the above sentence and understand what is happening.
sleep 4;
# Download using wget with curl failback.
wget -L -O "FirefoxNightly.tar.bz2" "https://download.mozilla.org/?product=firefox-nightly-latest-ssl&os=linux64" >/dev/null || curl -L -o "FirefoxNightly.tar.bz2" "https://download.mozilla.org/?product=firefox-nightly-latest-ssl&os=linux64" || /.error.sh ;
# Begin install notice.
printf -- '\n\n\n%s\n\n' " Installing Mozilla Firefox Nightly.";
# Checks if distro has default opt path and if not found adds opt with default permissions.
sudo mkdir -p -m 755 /opt ;
# Path where to be installed.
sudo mkdir /opt/firefox-nightly ;
# Extracts to install path.
sudo tar xjf FirefoxNightly.tar.bz2 -C /opt/firefox-nightly/ ;
# Required permissions needed for Mozilla Firefox automatic update feature to work.
sudo chmod -R 757 /opt/firefox-nightly/firefox/ ;
# Start create icon script.
chmod +x ./64bit/icon_nightly64.sh ; bash ./64bit/icon_nightly64.sh ;
# Give time for icon script to complete.
sleep 2;
# Makes icon executable allowing it to run Firefox (which is also executable).
chmod +x Firefox-Nightly.desktop ;
# Adds icon to application menu (xfce, gnome, cinnamon, mate, deepin, etc...).
sudo cp Firefox-Nightly.desktop /usr/share/applications ;
# Copies desktop icon to all user desktops and grants them ownership (it is their desktop after all).
sudo find /home/*/Desktop -maxdepth 1 -type d -exec cp Firefox_Nightly.desktop '{}' \; -exec chown --reference='{}' '{}/Firefox_Nightly.desktop' \;
# Adds a desktop icon to all FUTURE new login users (assuming you make any).
sudo mkdir -p /etc/skel/Desktop ; sudo cp Firefox-Nightly.desktop /etc/skel/Desktop ;
# Removes the temporary files no longer needed.
rm FirefoxNightly.tar.bz2 ; rm Firefox-Nightly.desktop ;
# Exit notice.
printf -- '%s\n' "" "" "" " Congratulations!" \
  " Mozilla Firefox Nightly is now installed onto your computer." \
  " Mozilla Firefox Nightly will update itself." \
  " Happy browsing." "" ""
# exit
exit 0
