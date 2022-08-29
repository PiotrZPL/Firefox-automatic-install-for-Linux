#!/bin/sh
#
# Firefox automatic install for Linux
#   v2.9.0.3
#
# -- This file to be used with Setup.sh
#
while true :
do
 printf -- '\n\n%s\n\n\n\n' " ";
 printf -- '%s\n' "   6 4 b i t - M E N U" \
 " " \
 " 1. Mozill Firefox" \
 " 2. Firefox Beta" \
 " 3. Firefox Developer Edition" \
 " 4. Firefox Nightly" \
 " 5. Firefox Extended Support Release" \
 " 6. Install ALL 64-bit editions" \
 " 7. Exit" \
 "" ""
 printf " Please enter option [1 - 7]";
 read -r opt
 case $opt in
  1) clear; printf -- '\n\n\n%s\n\n\n\n' " You selected Mozilla Firefox"; chmod +x ./32bit/FirefoxStable32.sh; ./32bit/FirefoxStable32.sh; break ;;

  2) clear; printf -- '\n\n\n%s\n\n\n\n' " You selected Firefox Beta"; chmod +x ./32bit/FirefoxBeta32.sh; ./32bit/FirefoxBeta32.sh; break ;;

  3) clear; printf -- '\n\n\n%s\n\n\n\n' " You selected Firefox Developer Edition"; chmod +x ./32bit/Firefox-Developer-Edition32.sh; ./32bit/Firefox-Developer-Edition32.sh; break ;;

  4) clear; printf -- '\n\n\n%s\n\n\n\n' " You selected Firefox Nightly"; chmod +x ./32bit/FirefoxNightly32.sh; ./32bit/FirefoxNightly32.sh; break ;;

  5) clear; printf -- '\n\n\n%s\n\n\n\n' " You selected Firefox Extended Support Release"; chmod +x ./32bit/FirefoxESR32.sh; ./32bit/FirefoxESR32.sh; break ;;

  6) clear; printf -- '\n\n\n%s\n\n\n\n' " You selected to install ALL 32-bit editions"; chmod +x ./32bit/firefox-all32.sh; ./32bit/firefox-all32.sh; break ;;

  7) clear; printf -- '\n\n\n%s\n\n\n\n' " Goodbye, $USER"; exit 1;;

  *) clear;
     printf -- '\n\n%s\n' " $opt is an invaild option. Please select option between 1-7 only" \
     " Press the [enter] key to continue. . ."
     read -r enterKey;
     clear;
esac
done
