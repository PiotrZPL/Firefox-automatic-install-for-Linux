#!/bin/sh
#
# This will install ALL 64-bit releases. To be used with Setup.sh
#
# Firefox automatic install for Linux - Legacy Edition
# v2.8.5
#
clear;
echo "This will install ALL releases of Mozilla Firefox onto your computer.

Mozilla Firefox
Firefox Beta
Firefox Developer Edition
Firefox Nightly
Firefox Extended Support Release

Are you sure wish to install ALL editions of Mozilla Firefox
onto your computer?

Please pick from option 1, 2, or 3";
echo;
 PS3='Please enter your choice:'
 menu=("Yes, install ALL version of Mozilla Firefox" "NO, do not install ALL verions of Mozille Firefox" "Go back")
 while :
 do
 select opt in "${menu[@]}"
 do
  case $opt in
  "Yes, install ALL version of Mozilla Firefox") clear; echo "Now installing ALL editions. Please wait... "; sleep 2; echo; echo; chmod +x ./64bit/FirefoxStable.sh; chmod +x ./64bit/FirefoxBeta.sh; chmod +x ./64bit/Firefox-Developer-Edition.sh; chmod +x ./64bit/FirefoxNightly.sh; chmod +x ./64bit/FirefoxESR.sh; ./64bit/FirefoxStable.sh; ./64bit/FirefoxBeta.sh; ./64bit/Firefox-Developer-Edition.sh; ./64bit/FirefoxNightly.sh; ./64bit/FirefoxESR.sh; echo; echo; echo "ALL editions of Mozilla Firfox have been installed."; echo  "They ALL will update themselves. No additional action is required."; echo; echo "Happy Browsing!"; echo; break ;;
  "NO, do not install ALL verions of Mozille Firefox") clear; echo; echo "You said, no. Nothing was installed at this time."; echo; echo; break ;;
  "Go back") exit 0 ;;
   *) echo "invalid option $REPLY"; break ;;
   esac
  done
  done
