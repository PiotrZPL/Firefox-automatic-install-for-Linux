#!/bin/sh
# 
# To be used with Setup.sh
#
clear;
echo;
echo "CAUTION - Are you sure you wish to remove and delete Mozilla Firefox?"
echo "That which is done, cannot be undone. Reinstalled, of course! But not undone.";
echo;
echo;
 PS3='Please enter your choice:' 
 menu=("Mozilla Firefox" "Firefox Beta" "Firefox Developer Edition" "Firefox Nightly" "Firefox Extended Support Release" "Remove ALL" "Quit")
 while :
 do
 select opt in "${menu[@]}"
 do
  case $opt in
  "Mozilla Firefox") clear; echo "Notice:"; chmod +x ./64bit/uninstallers/firefox-UNINSTALL.sh; ./64bit/uninstallers/firefox-UNINSTALL.sh; break ;;
  "Firefox Beta") clear; echo "Notice:"; chmod +x ./64bit/uninstallers/beta-UNINSTALL.sh; ./64bit/uninstallers/beta-UNINSTALL.sh; break ;;
  "Firefox Developer Edition") clear; echo "Notice:"; chmod +x ./64bit/uninstallers/firefox-dev-UNINSTALL.sh; ./64bit/uninstallers/firefox-dev-UNINSTALL.sh; break ;;
  "Firefox Nightly") clear; echo "Notice:"; chmod +x ./64bit/uninstallers/nightly-UNINSTALL.sh; ./64bit/uninstallers/nightly-UNINSTALL.sh; break ;;
  "Firefox Extended Support Release") clear; echo "Notice:"; chmod +x ./64bit/uninstallers/esr-UNINSTALL.sh; ./64bit/uninstallers/esr-UNINSTALL.sh; break ;;
  "Remove ALL") clear; echo "Caution:"; chmod +x ./64bit/uninstallers/firefox-all-UNINSTALL.sh; ./64bit/uninstallers/firefox-all-UNINSTALL.sh; break ;;
  "Quit") exit 0 ;;
   *) echo "invalid option $REPLY"; break ;;
   esac
  done
  done
