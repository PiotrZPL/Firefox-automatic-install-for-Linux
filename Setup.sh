#!/bin/sh
#
# Firefox automatic install for Linux
#   v2.9.0.4
#
while true :
do
 clear;
 printf -- '\n%s\n' " ";
 printf -- '%s\n' "   M A I N - M E N U" \
 " " \
 " 1. Install 64-bit Firefox -- Recommended" \
 " 2. Install 32-bit Firefox -- legacy" \
 " 3. Uninstall 64-bit" \
 " 4. Uninstall 32-bit" \
 " 5. Exit" \
 "" ""
 printf " Please enter option [1 - 5]";
 read -r opt
 case $opt in
  1) clear; printf -- '\n%s\n\n' " You selected to install Firefox 64-bit"; chmod +x ./64bit/sub_menu64.sh; ./64bit/sub_menu64.sh; exit 0 ;;

  2) clear; printf -- '\n%s\n\n' " You selected to install Firefox 32-bit"; chmod +x ./32bit/sub_menu32.sh; ./32bit/sub_menu32.sh; exit 0 ;;

  3) clear; printf -- '\n%s\n\n' " You selected to uninstall 64-bit"; chmod +x ./64bit/uninstallers/uninstall_menu64.sh; ./64bit/uninstallers/uninstall_menu64.sh; exit 0 ;;

  4) clear; printf -- '\n%s\n\n' " You selected to uninstall 32-bit"; chmod +x ./32bit/32bit_uninstallers/uninstall_menu32.sh; ./32bit/32bit_uninstallers/uninstall_menu32.sh; exit 0 ;;

  5) clear; printf -- '\n%s\n\n' " Goodbye, $USER"; exit 1;;

  *) clear;
     printf -- '\n\n%s\n' " $opt is an invaild option. Please select option between 1-7 only" \
     " Press the [enter] key to continue. . ."
     read -r enterKey;
     clear;
esac
done
# Other than removing all my little developer notes. Do you know a better way to improve this? Dare to speak up!
# One of the cool things about Linux and code, in general, is people like yourself. We all make it possible, and we all start somewhere.
# An important thing to remember is no matter how good, or bad you are at coding, there will always be people who will discourage you.
# Only you can carry yourself forward. Take that first step, and then another and another. Never give up. Never surrender.
# -- As always, Happy Browsing!
