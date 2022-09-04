#!/bin/sh
#
# Firefox automatic install for Linux - oem - silent instal
#
# This OEM file (oem.sh) is redundant. You do not absolutely need to use this file. 
# The enclosed setup files (for example, firefox_nightly.sh) within the OEM folder (directory) can work 
# independently alongside (with) their associated icon file (for example, icon_nightly64.sh) and the error.sh file.
# However, to use this file anyways, uncomment what you need and save.
#
# When done comment out the text below.
printf " If you are currently seeing this TEXT, your developer has not configured Firefox automatic install for Linux correctly as they should have commended out this text.";
# When done comment out the text above.
#
# Firefox
# chmod +x ./firefox_stable.sh ; bash ./firefox_stable.sh ;
# Firefox Beta
# chmod +x ./firefox_beta.sh ; bash ./firefox_beta.sh ;
# Firefox Developer Edition
# chmod +x ./firefox_developer.sh ; bash ./firefox_developer.sh ;
# Firefox Nightly
# chmod +x ./firefox_nightly.sh ; bash ./firefox_nightly.sh ;
# Firefox ESR
# chmod +x ./firefox_esr.sh ; bash ./firefox_esr.sh ;
#
#
# Exit
exit 0
