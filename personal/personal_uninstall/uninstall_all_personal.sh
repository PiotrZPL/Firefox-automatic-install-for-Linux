#!/bin/sh
#
# Firefox automatic uninstall for Linux - personal uninstall ALL - 64-bit

# Function for user confirmation
confirm_action() {
    printf "%s" "$1 [y/N]: "
    read -r confirm
    if [ "$confirm" != "y" ] && [ "$confirm" != "Y" ]; then
        printf -- '%s\n' "" "" "Action canceled. No changes have been made." "" ""
        exit 0
    fi
}

# Prompt for user confirmation before uninstallation
confirm_action "Are you sure you want to uninstall all your personal editions of Mozilla Firefox?"

# Uninstall notice
printf -- '\n%s\n' "Uninstalling ALL your personal copies of Mozilla Firefox."

# Define the Firefox directories for different editions
FIREFOX_DIR="$HOME/Mozilla/firefox"
BETA_DIR="$HOME/Mozilla/firefox_beta"
DEVELOPER_DIR="$HOME/Mozilla/firefox_developer_edition"
NIGHTLY_DIR="$HOME/Mozilla/firefox_nightly"
ESR_DIR="$HOME/Mozilla/firefox_esr"

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

# Exit notice
printf -- '%s\n' "" "" "" "Thank you for using Mozilla Firefox." \
"Firefox has been deleted and uninstalled. Per your request." \
"Really sorry to see you go. Hope to see you again real soon." "" ""

# Exit
exit 0
