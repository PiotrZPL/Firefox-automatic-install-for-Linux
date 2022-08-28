#!/bin/sh
#
# ERROR message to display should CURL or WGET not be located or fail to download
#
# Error notice.
printf -- '%s\n' "" "" "" " I am sorry. I cannot download from Mozilla." \
  " It is remotely possible CURL or WGET is not available on your computer." \
  " It is also possible your internet connection failed." \
  " Please verify that either CURL or WGET is installed (either will work)." \
  " If one of them is installed, please check your internet connection." \
  " Or please contact your system administator for assistance." \
  " " " " \
  " I am now exiting the install... Nothing has changed on your computer." "" ""
# error exit.
exit 1
