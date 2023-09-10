##!/bin/sh
#
# Firefox automatic install for Linux - personal PURGE- 64-bit

# Define the Firefox directories for different editions
FIREFOX_DIR="$HOME/Mozilla/firefox"
BETA_DIR="$HOME/Mozilla/firefox_beta"
DEVELOPER_DIR="$HOME/Mozilla/firefox_developer_edition"
NIGHTLY_DIR="$HOME/Mozilla/firefox_nightly"
ESR_DIR="$HOME/Mozilla/firefox_esr"

# Uninstall notice
printf -- '\n%s\n' "Now uninstalling Mozilla Firefox."

# Uninstall each edition of Firefox
rm -r -f "$FIREFOX_DIR"
rm -r -f "$BETA_DIR"
rm -r -f "$DEVELOPER_DIR"
rm -r -f "$NIGHTLY_DIR"
rm -r -f "$ESR_DIR"

# Remove menu shortcuts
rm -r -f "$HOME/.local/share/applications/Mozilla_Firefox.desktop"
rm -r -f "$HOME/.local/share/applications/Firefox_Beta.desktop"
rm -r -f "$HOME/.local/share/applications/Firefox_Developer_Edition.desktop"
rm -r -f "$HOME/.local/share/applications/Firefox_Nightly.desktop"
rm -r -f "$HOME/.local/share/applications/Firefox_ESR.desktop"

# Remove desktop shortcuts
DESKTOP_DIR=$(xdg-user-dir DESKTOP)
rm -r -f "$DESKTOP_DIR/Mozilla_Firefox.desktop"
rm -r -f "$DESKTOP_DIR/Firefox_Beta.desktop"
rm -r -f "$DESKTOP_DIR/Firefox_Developer_Edition.desktop"
rm -r -f "$DESKTOP_DIR/Firefox_Nightly.desktop"
rm -r -f "$DESKTOP_DIR/Firefox_ESR.desktop"

# Purge - Remove Firefox cache and configuration/profile files
printf -- '\n%s\n' "Purging all your Firefox data."

# All your Firefox file cache.
rm -r -f "$HOME/.cache/mozilla/firefox/"

# All your Firefox configuration and profile files.
rm -r -f "$HOME/.mozilla/firefox/"

# Exit notice.
printf -- '%s\n' "" "" "" "Thank you for using Mozilla Firefox." \
"Firefox, along with all user data, has been deleted and uninstalled. Per your request." \
"Really sorry to see you go. Hope to see you again real soon." "" ""

# Exit
exit 0
