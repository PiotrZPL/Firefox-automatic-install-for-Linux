#!/bin/sh
#
# This will install ALL 64-bit releases. To be used with Setup.sh
#
# Firefox automatic install for Linux - Universal shell edition
# v2.9.0
#
echo "Now installing ALL editions. Please wait... ";
# Give time for user to read notice.
sleep 2; 
# Visual spacing
echo; 
echo; 
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
echo; echo; echo "ALL editions of Mozilla Firfox have been installed."; 
echo  "They ALL will update themselves. No additional action is required."; 
echo; echo "Happy Browsing!"; echo; echo;
# Exit
exit 0
