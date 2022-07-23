#!/bin/sh
#
# This will install ALL 32-bit releases. To be used with Setup.sh
#
# Firefox automatic install for Linux - Universal shell edition
# v2.9.0
#
echo;
echo "Now installing ALL editions. Please wait... "; sleep 2; 
echo; echo; chmod +x ./32bit/FirefoxStable32.sh; chmod +x ./32bit/FirefoxBeta32.sh; chmod +x ./32bit/Firefox-Developer-Edition32.sh; chmod +x ./32bit/FirefoxNightly32.sh; chmod +x ./32bit/FirefoxESR32.sh;
./32bit/FirefoxStable32.sh; ./32bit/FirefoxBeta32.sh; ./32bit/Firefox-Developer-Edition32.sh; ./32bit/FirefoxNightly32.sh; ./32bit/FirefoxESR32.sh; 
echo; echo; echo "ALL editions of Mozilla Firfox 32-bit have been installed."; 
echo  "They ALL will update themselves. No additional action is required."; 
echo; echo "Happy Browsing!"; echo; echo;
exit 0
