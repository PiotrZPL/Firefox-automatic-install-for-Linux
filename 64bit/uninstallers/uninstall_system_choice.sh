#!/bin/sh
#
# Firefox automatic install for Linux
# v3.0.0

# Specify the directory where the Firefox uninstall scripts are located
SCRIPT_DIR="./64bit/uninstallers"

# Function to uninstall a single Firefox edition
install_single_edition() {
  edition="$1"
  script_path="${SCRIPT_DIR}/${edition}_UNINSTALL.sh"

  if [ -f "$script_path" ]; then
    sudo chmod +x "$script_path"    # Set the script as executable
    exec "$script_path"            # Replace the current process with the sub-script's process
  else
    clear
    printf -- '\n%s\n\n' "Script not found: $script_path"
  fi
}

# Function to remove all 64-bit editions (with confirmation)
uninstall_all_editions() {
  clear
  printf -- '\n%s\n\n' "You selected to uninstall ALL 64-bit editions"
  printf -- '%s\n' "This will remove all Firefox editions from your computer." \
    "Are you sure you want to proceed? (Y/N)"
  read -r confirm

  if [ "$confirm" = "Y" ] || [ "$confirm" = "y" ]; then
    chmod +x "${SCRIPT_DIR}/ALL_UNINSTALL64.sh"
    "${SCRIPT_DIR}/ALL_UNINSTALL64.sh"
  else
    printf -- '\n%s\n\n' "Cancelling the uninstallation of ALL 64-bit editions."
  fi
}

# Function to purge all 64-bit editions (with confirmation)
purge_all_editions() {
  clear
  printf -- '\n%s\n\n' "Caution:"
  printf -- '%s\n' "This will remove all 64-bit editions AND all browser cache and configuration files for all copies of Mozilla Firefox for all users on your computer (system-wide)." \
    "Are you sure you want to proceed? (Y/N)"
  read -r confirm

  if [ "$confirm" = "Y" ] || [ "$confirm" = "y" ]; then
    chmod +x "${SCRIPT_DIR}/PURGE_64.sh"
    "${SCRIPT_DIR}/PURGE_64.sh"
  else
    printf -- '\n%s\n\n' "Cancelling the PURGE of ALL 64-bit editions."
  fi
}

# Function to display the main menu
display_main_menu() {
  clear
  printf -- '\n%s\n' " ";
  printf -- '%s\n' "   Firefox automatic install for Linux" \
    " " \
    "           S Y S T E M - U N I N S T A L L" \
    " " \
    " CAUTION - You are about to remove and delete" \
    "           Mozilla Firefox from your computer!" \
    " " \
    " 1. Mozilla Firefox" \
    " 2. Firefox Beta" \
    " 3. Firefox Developer Edition" \
    " 4. Firefox Nightly" \
    " 5. Firefox Extended Support Release" \
    " 6. Uninstall ALL 64-bit editions" \
    " 7. Exit" \
    " 66. PURGE - CAUTION: Will remove all 64-bit editions, cache, and configuration files for all copies of Mozilla Firefox for all users." \
    "" ""
  printf " Please enter option [1 - 7, 66]: "
}

# Main script execution
while true; do
  display_main_menu
  read -r opt

  case $opt in
    [1-5])
      case $opt in
        1) edition="Stable" ;;
        2) edition="Beta" ;;
        3) edition="Developer_Edition" ;;
        4) edition="Nightly" ;;
        5) edition="ESR" ;;
      esac
      install_single_edition "$edition"
      break
      ;;
    6)
      uninstall_all_editions
      break
      ;;
    66)
      purge_all_editions # Execute order 66
      break
      ;;
    7)
      clear
      printf -- '\n%s\n\n' "Goodbye, $USER"
      exit 1
      ;;
    *)
      clear
      printf -- '\n\n%s\n' " $opt is an invalid option. Please select an option between 1-7 or 66 only" \
        " Press the [enter] key to continue. . ."
      read -r
      ;;
  esac
done
