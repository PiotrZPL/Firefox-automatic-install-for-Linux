#!/bin/sh
#
# This will install ALL 32-bit releases. To be used with Setup.sh
#
# Firefox automatic install for Linux
# v2.9.0.4
#
printf -- '\n%s\n' " Now installing ALL 32-bt editions of Mozilla Firefox. Please wait... ";
# Give time for user to read notice.
sleep 2; 
# Visual spacing
printf -- '\n\n\n%s\n\n' " ";
# Firefox Stable
chmod +x ./32bit/Firefox_Stable32.sh; ./32bit/Firefox_Stable32.sh; 
# Firefox Beta
chmod +x ./32bit/Firefox_Beta32.sh; ./32bit/Firefox_Beta32.sh;
# Firefox Developer
chmod +x ./32bit/Firefox_Developer_Edition32.sh; ./32bit/Firefox_Developer_Edition32.sh; 
# Firefox Nightly
chmod +x ./32bit/Firefox_Nightly32.sh; ./32bit/Firefox_Nightly32.sh; 
# Firefox Extended Support Release
chmod +x ./32bit/Firefox_ESR32.sh; ./32bit/Firefox_ESR32.sh;
# Exit notice
printf -- '%s\n' "" "" "" " Congratulations!" \
  " ALL editions of Mozilla Firfox 32-bit have been installed onto your computer." \
  " They ALL will update themselves. No additional action is required." \
  " Happy browsing." "" ""
# exit
exit 0
