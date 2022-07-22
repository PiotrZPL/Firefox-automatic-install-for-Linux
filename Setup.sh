#!/bin/sh
#
# Firefox automatic install for Linux
#  Universal Shell Edition
#   v2.9.0
#
while true :
do
 clear;
 echo;
 echo "   M A I N - M E N U";
 echo;
 echo "1. Install 64-bit Firefox -- Recommended";
 echo "2. Install 32-bit Firefox -- legacy";
 echo "3. Uninstall 64-bit";
 echo "4. Uninstall 32-bit";
 echo "5. Exit";
 echo;
 echo "Please enter option [1 - 5]";
 read -r opt
 case $opt in
  1) clear; echo; echo "You selected to install Firefox 64-bit"; echo; chmod +x ./64bit/sub-menu64.sh; ./64bit/sub-menu64.sh; exit 0 ;;

  2) clear; echo; echo "You selected to install Firefox 32-bit"; echo; chmod +x ./32bit/sub-menu32.sh; ./32bit/sub-menu32.sh; exit 0 ;;

  3) clear; echo; echo "You selected to uninstall 64-bit"; echo; chmod +x ./64bit/uninstallers/uninstall-menu64.sh; ./64bit/uninstallers/uninstall-menu64.sh; exit 0 ;;

  4) clear; echo; echo "You selected to uninstall 32-bit"; echo; chmod +x ./32bit/32bit-uninstallers/uninstall-menu32.sh; ./32bit/32bit-uninstallers/uninstall-menu32.sh; exit 0 ;;

  5) clear; echo; echo "Goodbye, $USER"; echo; exit 1;;

  *) echo "$opt is an invaild option. Please select option between 1-5 only";
     echo "Press the [enter] key to continue. . .";
     read -r enterKey;
esac
done
# Other than removing all my little developer notes. Do you know a better way to improve this? Dare to speak up!
# One of the cool things about Linux and code, in general, is people like yourself. We all make it possible, and we all start somewhere.
# An important thing to remember is no matter how good, or bad you are at coding, there will always be people who will discourage you.
# Only you can carry yourself forward. Take that first step, and then another and another. Never give up. Never surrender.
# -- As always, Happy Browsing!
