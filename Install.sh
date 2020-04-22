#!/bin/bash
#
# Firefox automatic install for Linux
#
 PS3='Please enter your choice:'
 options=("64-bit Firefox" "32-bit Firefox" "Quit")
 while :
 do
 select opt in "${options[@]}"
 do
  case $opt in
  "64-bit Firefox") clear; echo; echo; echo "You selected Firefox 64-bit"; echo; echo; chmod +x ./64bit/sub64.sh; ./64bit/sub64.sh; exit 0 ;;
  "32-bit Firefox") clear; echo; echo; echo "You selected Firefox 32-bit"; echo; echo; chmod +x ./32bit/sub32.sh; ./32bit/sub32.sh; exit 0 ;;
  "Quit") exit 0 ;;
   *) echo "invalid option $REPLY"; break ;;
   esac
  done
  done
