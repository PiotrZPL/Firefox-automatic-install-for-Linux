#!/bin/sh
#
# This will install ALL 32-bit releases. To be used with Setup.sh
#
# Firefox automatic install for Linux - Universal shell edition
# v2.9.0.3
#
printf -- '\n\n%s\n\n\n\n' " Now installing ALL 32-bt editions of Mozilla Firefox. Please wait... ";
# Give time for user to read notice.
sleep 2; 
# Visual spacing
printf -- '\n\n\n%s\n\n' " ";
# Firefox Stable
chmod +x ./32bit/FirefoxStable32.sh; ./32bit/FirefoxStable32.sh; 
# Firefox Beta
chmod +x ./32bit/FirefoxBeta32.sh; ./32bit/FirefoxBeta32.sh;
# Firefox Developer
chmod +x ./32bit/Firefox-Developer-Edition32.sh; ./32bit/Firefox-Developer-Edition32.sh; 
# Firefox Nightly
chmod +x ./32bit/FirefoxNightly32.sh; ./32bit/FirefoxNightly32.sh; 
# Firefox Extended Support Release
chmod +x ./32bit/FirefoxESR32.sh; ./32bit/FirefoxESR32.sh;
# Exit notice
printf -- '%s\n' "" "" "" " Congratulations!" \
  " ALL editions of Mozilla Firfox 32-bit have been installed onto your computer." \
  " They ALL will update themselves. No additional action is required." \
  " Happy browsing." "" ""
# exit
exit 0
