#!/bin/sh
#
# Firefox automatic install for Linux
# v3.0.0
#
# This script installs all 32-bit releases of Mozilla Firefox.

# Specify the directory where the Firefox installation scripts are located
SCRIPT_DIR="./personal32"

# Set executable permissions for all files in the ./personal directory
chmod -R +x ./personal32

# List of edition names
EDITIONS="Stable Beta Developer_Edition Nightly Extended_Support_Release"

# Function to install all editions
install_all_editions() {
  printf -- '\n%s\n' "Now installing all versions of Mozilla Firefox. This may take a moment, please wait..."
  sleep 2

  for edition in $EDITIONS; do
    script_path="${SCRIPT_DIR}/Firefox_${edition}.sh"
    if [ -f "$script_path" ]; then
      if [ -x "$script_path" ]; then
        "$script_path"
      else
        printf -- '\n%s\n' "Script not executable: $script_path"
      fi
    else
      printf -- '\n%s\n' "Script not found: $script_path"
    fi
  done
}

# Display an exit notice
display_exit_notice() {
  printf -- '%s\n' "" "" "" "Congratulations!" \
    "All versions of Mozilla Firefox have been successfully installed on your computer." \
    "They will update automatically, so no additional action is required." \
    "Enjoy your browsing experience!" "" ""
}

# Main script execution
install_all_editions
display_exit_notice

# Exit
exit 0
