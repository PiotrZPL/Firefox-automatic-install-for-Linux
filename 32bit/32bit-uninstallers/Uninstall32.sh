#!/bin/bash
#
#
# That which is done, cannot be undone. Reinstalled, of course! But not undone.
#
#
 PS3='Please enter your choice:' 
 options=("Firefox" "Firefox Beta" "Firefox Developer Edition" "Firefox Nighty" "Firefox Extended Support Release" "Quit")
 while :
 do
 select opt in "${options[@]}"
 do
  case $opt in
  "Firefox") clear; echo; echo; echo "You selected Firefox"; echo; echo; chmod +x ./32firefox-UNINSTALL.sh; ./32firefox-UNINSTALL.sh; break ;;
  "Firefox Beta") clear; echo; echo; echo "You selected Firefox Beta"; echo; echo; chmod +x ./32beta-UNINSTALL.sh; ./32beta-UNINSTALL.sh; break ;;
  "Firefox Developer Edition") clear; echo; echo; echo "You selected Firefox Developer Edition"; echo; echo; chmod +x ./32firefox-dev-UNINSTALL.sh; ./32firefox-dev-UNINSTALL.sh; break ;;
  "Firefox Nightly") clear; echo; echo; echo "You selected Firefox Nightly"; echo; echo; chmod +x ./32nightly-UNINSTALL.sh; ./32nightly-UNINSTALL.sh; break ;;
  "Firefox Extended Support Release") clear; echo; echo; echo "You selected Firefox Extended Support Release"; echo; echo; chmod +x ./32esr-UNINSTALL.sh; ./32esr-UNINSTALL.sh; break ;;
  "Quit") exit 0 ;;
   *) echo "invalid option $REPLY" ; break ;;
   esac
  done
  done
