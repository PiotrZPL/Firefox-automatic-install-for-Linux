#!/bin/sh
#
# This will install ALL 64-bit releases. To be used with Setup.sh
#
# Firefox automatic install for Linux - Legacy Edition
# v2.8.5
#
clear;
echo "Now installing ALL editions. Please wait... "; sleep 2; 
echo; echo; chmod +x ./64bit/FirefoxStable.sh; chmod +x ./64bit/FirefoxBeta.sh; chmod +x ./64bit/Firefox-Developer-Edition.sh; chmod +x ./64bit/FirefoxNightly.sh; chmod +x ./64bit/FirefoxESR.sh; 
./64bit/FirefoxStable.sh; ./64bit/FirefoxBeta.sh; ./64bit/Firefox-Developer-Edition.sh; ./64bit/FirefoxNightly.sh; ./64bit/FirefoxESR.sh;
echo; echo; echo "ALL editions of Mozilla Firfox have been installed."; 
echo  "They ALL will update themselves. No additional action is required."; 
echo; echo "Happy Browsing!"; echo; echo;
exit 0
