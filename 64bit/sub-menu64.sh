#!/bin/sh
#
# Firefox automatic install for Linux
#  Universal Shell Edition
#   v2.9.0
#
# -- This file to be used with Setup.sh
#
while true :
do
 echo;
 echo "   6 4 b i t - M E N U";
 echo;
 echo "1. Mozill Firefox";
 echo "2. Firefox Beta";
 echo "3. Firefox Developer Edition";
 echo "4. Firefox Nightly";
 echo "5. Firefox Extended Support Release";
 echo "6. Install ALL 64-bit editions";
 echo "7. Exit";
 echo;
 echo "Please enter option [1 - 7]";
 read -r opt
 case $opt in
  1) clear; echo; echo "You selected Mozilla Firefox"; echo; chmod +x ./64bit/FirefoxStable.sh; ./64bit/FirefoxStable.sh; break ;;

  2) clear; echo; echo "You selected Firefox Beta"; echo; chmod +x ./64bit/FirefoxBeta.sh; ./64bit/FirefoxBeta.sh; break ;;

  3) clear; echo; echo "You selected Firefox Developer Edition"; echo; chmod +x ./64bit/Firefox-Developer-Edition.sh; ./64bit/Firefox-Developer-Edition.sh; break ;;

  4) clear; echo; echo "You selected Firefox Nightly"; echo; chmod +x ./64bit/FirefoxNightly.sh; ./64bit/FirefoxNightly.sh; break ;;

  5) clear; echo; echo "You selected Firefox Extended Support Release"; echo; chmod +x ./64bit/FirefoxESR.sh; ./64bit/FirefoxESR.sh; break ;;

  6) clear; echo; echo "You selected to install ALL 64-bit editions"; echo; chmod +x ./64bit/firefox-all.sh; ./64bit/firefox-all.sh; break ;;

  7) clear; echo; echo "Goodbye, $USER"; echo; exit 1;;

  *) echo "$opt is an invaild option. Please select option between 1-7 only";
     echo "Press the [enter] key to continue. . .";
     read -r enterKey;
esac
done
