#!/bin/sh
#
# Firefox automatic install for Linux - oem - silent instal
# v3.0.0
#
# This OEM file (oem.sh) is redundant. You do not absolutely need to use this file. 
# The enclosed setup files (for example, firefox_nightly.sh) within the OEM folder (directory) can work independently.
# However, to use this file anyways, uncomment what you need and save.


# When done comment out the text below.
printf " If you are currently seeing this TEXT, your developer has not configured Firefox Automatic Install for Linux correctly as they should have commented out this text.";
# When done comment out the text above.

# Mozilla Firefox
# chmod +x ./firefox_stable.sh ; bash ./firefox_stable.sh ;

# Mozilla Firefox Beta
# chmod +x ./firefox_beta.sh ; bash ./firefox_beta.sh ;

# Mozilla Firefox Developer Edition
# chmod +x ./firefox_developer.sh ; bash ./firefox_developer.sh ;

# Mozilla Firefox Nightly
# chmod +x ./firefox_nightly.sh ; bash ./firefox_nightly.sh ;

# Mozilla Firefox Extended Support Release (ESR)
# chmod +x ./firefox_esr.sh ; bash ./firefox_esr.sh ;

# Exit
exit 0
