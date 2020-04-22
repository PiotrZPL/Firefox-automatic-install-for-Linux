#!/bin/bash
#
# This will install ALL editions of Mozilla Firefox (64-bit)
#
# Firefox Stable Edition  ( FirefoxStable.sh )
# Firefox Beta ( FirefoxBeta.sh )
# Firefox Developer Edition ( Firefox-Developer-Edition.sh )
# Firefox Nightly ( FirefoxNightly.sh )
# Firefox Extended Support Release ( FirefoxESR.sh )
#
# chmod +x FirefoxStable.sh FirefoxBeta.sh Firefox-Developer-Edition.sh FirefoxNightly.sh FirefoxESR.sh
echo
 while true; do
    read -p "This will install ALL editions of Mozilla Firefox onto your computer.

Firefox
Firefox Beta
Firefox Developer Edition
Firefox Nightly
Firefox Extended Support Release

This is only an OPTION and you are not required to install ALL editions.

If you intended to only install, for example, 
the latest stable version of Firefox you can simply run FirefoxStable.sh 

Are you sure wish to install ALL editions of Mozilla Firefox 
onto your computer?" yn
    case $yn in
        [Yy]* ) chmod +x FirefoxStable.sh FirefoxBeta.sh Firefox-Developer-Edition.sh FirefoxNightly.sh FirefoxESR.sh; ./FirefoxStable.sh; ./FirefoxBeta.sh; ./Firefox-Developer-Edition.sh; ./FirefoxNightly.sh; ./FirefoxESR.sh; echo; echo; echo ALL editions of Mozilla Firfox have been installed; echo  They ALL will update themselves. No additional action is required.; echo; echo Happy Browsing!; echo; break;;
        [Nn]* ) exit;;
        * ) echo "Please answer yes or no.";;
    esac
done
exit 0
