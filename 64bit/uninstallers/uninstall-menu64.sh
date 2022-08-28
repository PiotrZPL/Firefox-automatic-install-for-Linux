#!/bin/sh
#
# Firefox automatic install for Linux
#   v2.9.0.3
#
# -- This file to be used with Setup.sh
#
# That which is done, cannot be undone. Reinstalled, of course! But not undone.
while true :
do
printf -- '\n\n%s\n\n\n\n' " ";
printf -- '%s\n' "   U N I N S T A L L - 6 4 b i t - M E N U" \
" " \
" CAUTION - You are about to remove and delete" \
"           Mozilla Firefox from your computer!" \
" " \
" 1. Mozill Firefox" \
" 2. Firefox Beta" \
" 3. Firefox Developer Edition" \
" 4. Firefox Nightly" \
" 5. Firefox Extended Support Release" \
" 6. Uninstall ALL 64-bit editions" \
" " \
" 7. Exit" \
" " \
" 66. PURGE - CAUTION: Will remove all 64-bit editions" \ "                     and all browser cache and configuration files for" \ "                     all copies of Mozilla Firefox for all users on your computer." \
"" ""
 printf " Please enter option [1 - 7]";
 read -r opt
 case $opt in
  1) clear; printf -- '\n\n\n%s\n\n\n\n' " You selected Mozilla Firefox"; chmod +x ./64bit/uninstallers/firefox-UNINSTALL.sh; ./64bit/uninstallers/firefox-UNINSTALL.sh; break ;;

  2) clear; printf -- '\n\n\n%s\n\n\n\n' " You selected Firefox Beta"; chmod +x ./64bit/uninstallers/beta-UNINSTALL.sh; ./64bit/uninstallers/beta-UNINSTALL.sh; break ;;

  3) clear; printf -- '\n\n\n%s\n\n\n\n' " You selected Firefox Developer Edition"; chmod +x ./64bit/uninstallers/firefox-dev-UNINSTALL.sh; ./64bit/uninstallers/firefox-dev-UNINSTALL.sh; break ;;

  4) clear; printf -- '\n\n\n%s\n\n\n\n' " You selected Firefox Nightly"; chmod +x ./64bit/uninstallers/nightly-UNINSTALL.sh; ./64bit/uninstallers/nightly-UNINSTALL.sh; break ;;

  5) clear; printf -- '\n\n\n%s\n\n\n\n' " You selected Firefox Extended Support Release"; chmod +x ./64bit/uninstallers/esr-UNINSTALL.sh; ./64bit/uninstallers/esr-UNINSTALL.sh; break ;;

  6) clear; printf -- '\n\n\n%s\n\n\n\n' " You selected to remove ALL 64-bit editions"; chmod +x ./64bit/uninstallers/firefox-all-UNINSTALL.sh; ./64bit/uninstallers/firefox-all-UNINSTALL.sh; break ;;

  7) clear; printf -- '\n\n\n%s\n\n\n\n' " Goodbye, $USER"; exit 1;;
  
  66) clear; printf -- '\n\n\n%s\n\n\n\n' " Per your request, $USER. Execute Order 66."; chmod +x ./64bit/uninstallers/PURGE-64.sh; ./64bit/uninstallers/PURGE-64.sh; break ;;

  *) clear;
     printf -- '\n\n%s\n' " $opt is an invaild option. Please select option between 1-7 only" \
     " Press the [enter] key to continue. . ."
     read -r enterKey;
     clear;
esac
done
