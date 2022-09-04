#!/bin/sh
#
# Firefox automatic install for Linux - personal uninstall
#
# This uninstall file (Uninstall.sh) is redundant. You do not absolutely need to use this file. 
# The enclosed uninstall files (for example, unNightly.sh which uninstall Firefox Nightly) 
# within the "personal_uninstall" folder (directory) can work independently.
#
# However, to use this file anyways, uncomment what you need and save.
# By default this file is set to uninstall the stable edition of Mozilla Firefox.
#
############ Mozilla Firefox
chmod +x ./unFirefox.sh ; bash ./unFirefox.sh ;
#
############ Firefox Beta
# chmod +x ./unBeta.sh ; bash ./unBeta.sh ;
#
############ Firefox Developer Edition
# chmod +x ./unDeveloper.sh ; bash ./unDeveloper.sh ;
#
############ Firefox Nightly
# chmod +x ./unNightly.sh ; bash ./unNightly.sh ;
#
############ Firefox Extended Support Release
# chmod +x ./unExtended.sh ; bash ./unExtended.sh ;
#
#
# Exit - Required for the script to exit correctly when done. 
exit 0
