#!/bin/sh
#
# This will install ALL 64-bit releases. To be used with Setup.sh
#
# Firefox automatic install for Linux - Universal shell edition
# v2.9.0
#
rintf -- '\n\n%s\n\n\n\n' "Now installing ALL editions of Mozilla Firefox. Please wait... ";
# Give time for user to read notice.
sleep 2; 
# Visual spacing
printf -- '\n\n\n%s\n\n' " ";
# Firefox Stable
chmod +x ./64bit/FirefoxStable.sh; ./64bit/FirefoxStable.sh;
# Firefox Beta
chmod +x ./64bit/FirefoxBeta.sh; ./64bit/FirefoxBeta.sh;
# Firefox Developer Edition
chmod +x ./64bit/Firefox-Developer-Edition.sh; ./64bit/Firefox-Developer-Edition.sh;
# Firefox Nightly
chmod +x ./64bit/FirefoxNightly.sh; ./64bit/FirefoxNightly.sh;
# Firefox Extended Support Release
chmod +x ./64bit/FirefoxESR.sh; ./64bit/FirefoxESR.sh;
# Exit notice
printf -- '%s\n' "" "" "" "Congratulations!" \
  "ALL editions of Mozilla Firfox have been installed onto your computer." \
  "They ALL will update themselves. No additional action is required." \
  "Happy browsing." "" ""
# Exit
exit 0
