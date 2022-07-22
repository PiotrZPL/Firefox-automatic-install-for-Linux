#!/bin/sh
#
# Firefox automatic install for Linux
#  Universal Shell Edition
#   v2.9.0
#
# -- This file to be used with Setup.sh
#
# That which is done, cannot be undone. Reinstalled, of course! But not undone.
while true :
do
 echo;
 echo "   U N I N S T A L L - 3 2 b i t - M E N U";
 echo;
 echo "CAUTION - You are about to remove and delete";
 echo "          Mozilla Firefox from your computer!";
 echo;
 echo "1. Mozill Firefox";
 echo "2. Firefox Beta";
 echo "3. Firefox Developer Edition";
 echo "4. Firefox Nightly";
 echo "5. Firefox Extended Support Release";
 echo "6. Remove ALL 32-bit editions";
 echo "7. Exit";
 echo;
 echo "Please enter option [1 - 7]";
 read -r opt
 case $opt in
  1) clear; echo; echo "You selected Mozilla Firefox"; echo; chmod +x ./32bit/32bit-uninstallers/32firefox-UNINSTALL.sh; ./32bit/32bit-uninstallers/32firefox-UNINSTALL.sh; break ;;

  2) clear; echo; echo "You selected Firefox Beta"; echo; chmod +x ./32bit/32bit-uninstallers/32beta-UNINSTALL.sh; ./32bit/32bit-uninstallers/32beta-UNINSTALL.sh; break ;;

  3) clear; echo; echo "You selected Firefox Developer Edition"; echo; chmod +x ./32bit/32bit-uninstallers/32firefox-dev-UNINSTALL.sh; ./32bit/32bit-uninstallers/32firefox-dev-UNINSTALL.sh; break ;;

  4) clear; echo; echo "You selected Firefox Nightly"; echo; chmod +x ./32bit/32bit-uninstallers/32nightly-UNINSTALL.sh; ./32bit/32bit-uninstallers/32nightly-UNINSTALL.sh; break ;;

  5) clear; echo; echo "You selected Firefox Extended Support Release"; echo; chmod +x ./32bit/32bit-uninstallers/32esr-UNINSTALL.sh; ./32bit/32bit-uninstallers/32esr-UNINSTALL.sh; break ;;

  6) clear; echo; echo "You selected to remoove ALL 32-bit editions"; echo; chmod +x ./32bit/32bit-uninstallers/32firefox-all-UNINSTALL.sh; ./32bit/32bit-uninstallers/32firefox-all-UNINSTALL.sh; break ;;

  7) clear; echo; echo "Goodbye, $USER"; echo; exit 1;;

  *) echo "$opt is an invaild option. Please select option between 1-7 only";
     echo "Press the [enter] key to continue. . .";
     read -r enterKey;
esac
done
