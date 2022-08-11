#!/bin/sh
#
# Installs Mozilla Firefox (stable release). To be used with Setup.sh
#
###### Beging download and check for download tools.
# Curl is the 1st choice. Including error suppression 2> if not found.
if which curl 2> /dev/null ; then
#   Download noice for curl.
    printf -- '\n\n%s\n\n\n\n' "Please wait. I am using CURL to download the latest version of Mozilla Firefox.";
#   4-second wait before beginning download. Gives user time to read the above sentence and understand what is happening.
    sleep 4;
#   Download command for curl.
    curl -o "FirefoxStable.tar.bz2" -L "https://download.mozilla.org/?product=firefox-latest-ssl&os=linux64" ;
# Wget is the 2nd choice.  Including error suppression 2> if not found.
elif which wget 2> /dev/null ; then
#   Download notice for wget.
    printf -- '\n\n%s\n\n\n\n' "Please wait. I am using WGET to download the latest version of Mozilla Firefox.";
#   4-second wait before beginning download. Gives user time to read the above sentence and understand what is happening.
    sleep 4;
#   Download command for wget.
    wget -O "FirefoxStable.tar.bz2" -L "https://download.mozilla.org/?product=firefox-latest-ssl&os=linux64";
# If neither, early exit notice.
else
    printf -- '%s\n' "" "" "" "I am sorry, but I cannot download Mozilla Firefox." \
                               "Neither CURL nor WGET is available on your computer." "" ""
    # Early exit.
    exit 1;
fi
###### End of download.
# Begin install notice.
printf -- '\n\n\n%s\n\n' "Installing Mozilla Firefox";
# Checks if distro has default opt path and if not found adds opt with default permissions.
sudo mkdir -p -m 755 /opt ;
# Extracts to install path
sudo tar xjf FirefoxStable.tar.bz2 -C /opt/ ;
# Required permissions needed for Mozilla Firefox automatic update feature to work.
sudo chmod -R 757 /opt/firefox/ ;
# Start create icon script
chmod +x ./64bit/firefox64-icon.sh ; bash ./64bit/firefox64-icon.sh ;
# Give time for icon script to complete
sleep 2;
# Makes icon executable allowing it to run Firefox (which is also executable).
chmod +x Mozilla-Firefox.desktop ;
# Adds icon to application menu (xfce, gnome, cinnamon, mate, deepin, etc...).
sudo cp Mozilla-Firefox.desktop /usr/share/applications ;
# Copies desktop icon to all user desktops and grants them ownership (it is their desktop after all).
for destdir in /home/*/Desktop/; do
    cp Mozilla-Firefox.desktop "$destdir" &&
    chown --reference="$destdir" "$destdir/Mozilla-Firefox.desktop"
done
printf "\n";
# Adds a desktop icon to all FUTURE new login users (assuming you make any).
sudo mkdir -p /etc/skel/Desktop ; sudo cp Mozilla-Firefox.desktop /etc/skel/Desktop ;
# Removes the temporary files no longer needed.
rm FirefoxStable.tar.bz2 ; rm Mozilla-Firefox.desktop ;
# Exit notice.
printf -- '%s\n' "" "" "" "Congratulations!" \
  "Mozilla Firefox is now installed onto your computer." \
  "Mozilla Firefox will update itself." \
  "Happy browsing." "" ""
# exit
exit 0
