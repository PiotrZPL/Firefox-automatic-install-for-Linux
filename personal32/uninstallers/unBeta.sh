#!/bin/sh
#
# Firefox Automatic Install for Linux -- Personal Uninstall Firefox Beta 32-bit -- File can be used independently

# Prompt for user confirmation
printf "Are you sure you want to uninstall Firefox Beta 32-bit? [y/N]: "
read -r confirm

if [ "$confirm" != "y" ] && [ "$confirm" != "Y" ]; then
    printf -- '%s\n' "" "" "Uninstallation canceled. Firefox Beta 32-bit has not been deleted." "" ""
    exit 0
fi

# Uninstalling Firefox notice
printf -- '\n%s\n' "Uninstalling your personal copy of Mozilla Firefox Beta"

# Installation
rm -r -f "$HOME/Mozilla/firefox_beta32"

# Menu shortcut
rm -r -f "$HOME/.local/share/applications/Firefox_Beta32.desktop"

# determine the XDG_DESKTOP_DIR, for multi-language support!
DESKTOP_DIR=$(xdg-user-dir DESKTOP)
# Desktop shortcut
rm -r -f "$DESKTOP_DIR/Firefox_Beta32.desktop"

# Exit notice
printf -- '%s\n' "" "" "" "Thank you for using Mozilla Firefox." \
"Firefox Beta 32-bit has been deleted and uninstalled. Per your request." \
"Really sorry to see you go. Hope to see you again real soon." "" ""

# Exit
exit 0
