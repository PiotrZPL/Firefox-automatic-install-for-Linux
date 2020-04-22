#!/bin/bash
#
# This file to be used with Install.sh
#
 PS3='Please enter your choice:' 
 options=("Firefox" "Firefox Beta" "Firefox Developer Edition" "Firefox Nighty" "Firefox Extended Support Release" "Quit")
 while :
 do
 select opt in "${options[@]}"
 do
  case $opt in
  "Firefox") clear; echo; echo; echo "You selected Firefox"; echo; echo; chmod +x ./64bit/FirefoxStable.sh; ./64bit/FirefoxStable.sh; break ;;
  "Firefox Beta") clear; echo; echo; echo "You selected Firefox Beta"; echo; echo; chmod +x ./64bit/FirefoxBeta.sh; ./64bit/FirefoxBeta.sh; break ;;
  "Firefox Developer Edition") clear; echo; echo; echo "You selected Firefox Developer Edition"; echo; echo; chmod +x ./64bit/Firefox-Developer-Edition.sh; ./64bit/Firefox-Developer-Edition.sh; break ;;
  "Firefox Nightly") clear; echo; echo; echo "You selected Firefox Nightly"; echo; echo; chmod +x ./64bit/FirefoxNightly.sh; ./64bit/FirefoxNightly.sh; break ;;
  "Firefox Extended Support Release") clear; echo; echo; echo "You selected Firefox Extended Support Release"; echo; echo; chmod +x ./64bit/FirefoxESR.sh; ./64bit/FirefoxESR.sh; break ;;
  "Quit") exit 0 ;;
   *) echo "invalid option $REPLY"; break ;;
   esac
  done
  done
