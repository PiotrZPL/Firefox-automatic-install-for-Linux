#!/bin/sh
#
# This will install ALL 64-bit releases. To be used with Setup.sh
#
# Firefox automatic install for Linux
# v2.9.0.4
#
printf -- '\n%s\n' " Now installing ALL editions of Mozilla Firefox. Please wait... ";
# Give time for user to read notice.
sleep 2; 
# Visual spacing
printf -- '\n\n\n%s\n\n' " ";
# Firefox Stable
chmod +x ./64bit/Firefox_Stable.sh; ./64bit/Firefox_Stable.sh;
# Firefox Beta
chmod +x ./64bit/Firefox_Beta.sh; ./64bit/Firefox_Beta.sh;
# Firefox Developer Edition
chmod +x ./64bit/Firefox_Developer_Edition.sh; ./64bit/Firefox_Developer_Edition.sh;
# Firefox Nightly
chmod +x ./64bit/Firefox_Nightly.sh; ./64bit/Firefox_Nightly.sh;
# Firefox Extended Support Release
chmod +x ./64bit/Firefox_ESR.sh; ./64bit/Firefox_ESR.sh;
# Exit notice
printf -- '%s\n' "" "" "" " Congratulations!" \
  " ALL editions of Mozilla Firfox have been installed onto your computer." \
  " They ALL will update themselves. No additional action is required." \
  " Happy browsing." "" ""
# Exit
exit 0
