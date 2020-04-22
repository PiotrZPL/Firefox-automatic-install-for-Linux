#!/bin/bash
#
# This file to be used with Install.sh
#
 PS3='Please enter your choice:' 
 options=("Firefox" "Firefox Beta" "Firefox Developer Edition" "Firefox Nightly" "Firefox Extended Support Release" "Quit")
 while :
 do
 select opt in "${options[@]}"
 do
  case $opt in
  "Firefox") clear; echo; echo; echo "You selected Firefox"; echo; echo; chmod +x ./32bit/FirefoxStable32.sh; ./32bit/FirefoxStable32.sh; break ;;
  "Firefox Beta") clear; echo; echo; echo "You selected Firefox Beta"; echo; echo; chmod +x ./32bit/FirefoxBeta32.sh; ./32bit/FirefoxBeta32.sh; break ;;
  "Firefox Developer Edition") clear; echo; echo; echo "You selected Firefox Developer Edition"; echo; echo; chmod +x ./32bit/Firefox-Developer-Edition32.sh; ./32bit/Firefox-Developer-Edition32.sh; break ;;
  "Firefox Nightly") clear; echo; echo; echo "You selected Firefox Nightly"; echo; echo; chmod +x ./32bit/FirefoxNightly32.sh; ./32bit/FirefoxNightly32.sh; break ;;
  "Firefox Extended Support Release") clear; echo; echo; echo "You selected Firefox Extended Support Release"; echo; echo; chmod +x ./32bit/FirefoxESR32.sh; ./32bit/FirefoxESR32.sh; break ;;
  "Quit") exit 0 ;;
   *) echo "invalid option $REPLY"; break ;;
   esac
  done
  done
