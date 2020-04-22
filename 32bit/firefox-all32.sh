#!/bin/bash
#
# This will install ALL editions of Mozilla Firefox 32-bit
#
# Firefox Stable Edition  ( FirefoxStable32.sh )
# Firefox Beta ( FirefoxBeta32.sh )
# Firefox Developer Edition ( Firefox-Developer-Edition32.sh )
# Firefox Nightly ( FirefoxNightly32.sh )
# Firefox Extended Support Release ( FirefoxESR32.sh )
echo
 while true; do
    read -p "This will install ALL editions of Mozilla Firefox 32-bit onto your computer.
    
Firefox
Firefox Beta
Firefox Developer Edition
Firefox Nightly
Firefox Extended Support Release

This is only an OPTION and you are not required to install ALL 32-bit editions.

If you intended to only install, for example, 
the latest stable version of Firefox 32-bit you can simply run FirefoxStable32.sh 

Are you sure wish to install ALL editions of Mozilla Firefox 32-bit 
onto your computer?" yn
    case $yn in
        [Yy]* ) chmod +x FirefoxStable32.sh FirefoxBeta32.sh Firefox-Developer-Edition32.sh FirefoxNightly32.sh FirefoxESR32.sh; ./FirefoxStable32.sh; ./FirefoxBeta32.sh; ./Firefox-Developer-Edition32.sh; ./FirefoxNightly32.sh; ./FirefoxESR32.sh; echo; echo; echo ALL editions of Mozilla Firfox 32-bit have been installed; echo  They ALL will update themselves. No additional action is required.; echo; echo Happy Browsing!; echo; break;;
        [Nn]* ) exit;;
        * ) echo "Please answer yes or no.";;
    esac
done
exit 0
