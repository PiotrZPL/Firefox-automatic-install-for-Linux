#!/bin/sh
#
# Firefox automatic uninstall for Linux
# v3.0.0

# Developer Notes:
# - This script is written in the Bourne shell (sh) scripting language, which is a standard and portable shell language.
# - It provides a menu-based interface to uninstall different editions of Mozilla Firefox on Linux.
# - The script is designed to target 64-bit editions of Firefox.
# - It uses several helper scripts located in the "./personal/uninstallers/" directory for actual uninstallation.

  # Display the main menu to the user.
display_menu() {
  printf -- '\n%s\n' " ";
  printf -- '%s\n' "   Firefox automatic install for Linux" \
    " " \
    "           P E R S O N A L - U N I N S T A L L" \
    " " \
    " CAUTION - You are about to remove and delete" \
    "           Mozilla Firefox from your computer!" \
    " " \
    " 1. Mozill Firefox" \
    " 2. Firefox Beta" \
    " 3. Firefox Developer Edition" \
    " 4. Firefox Nightly" \
    " 5. Firefox Extended Support Release" \
    " 6. Uninstall ALL personal 64-bit editions" \
    " 7. Purge Firefox and ALL personal files (Cannot be undone)" \
    " 8. Exit" \
    "" ""
  printf " Please enter option [1 - 8]: ";
}

  # Uninstall a specific edition of Firefox.
  # The function takes the edition name as a parameter and calls the corresponding uninstall script.
uninstall_edition() {
  edition="$1"
  script_path="./personal/personal_uninstall/un${edition}.sh"

  if [ -f "$script_path" ]; then
    clear
    printf -- '\n%s\n\n' "You selected $edition"
    chmod +x "$script_path"
    "$script_path"
  else
    clear
    printf -- '\n%s\n\n' "Script not found: $script_path"
  fi
}

  # Uninstall all 64-bit editions of Firefox at once.
  # Calls the appropriate script to uninstall all editions.
uninstall_all_editions() {
  clear
  printf -- '\n%s\n\n' "You selected to remove ALL 64-bit editions"
  chmod +x "./personal/personal_uninstall/uninstall_all_personal.sh"
  "./personal/personal_uninstall/uninstall_all_personal.sh"
}

  # Purge Firefox and all personal files, a process that cannot be undone.
  # Asks for user confirmation before proceeding.
purge_firefox() {
  clear
  printf -- '\n%s\n\n' "You selected to purge Firefox and ALL personal files. This cannot be undone!"
  printf "Are you sure you want to proceed? [y/n]: "
  read -r answer

  if [ "$answer" = "y" ] || [ "$answer" = "Y" ]; then
    chmod +x "./personal/personal_uninstall/personal_purge.sh"
    "./personal/personal_uninstall/personal_purge.sh"
  else
    printf -- '\n%s\n\n' "Purge operation cancelled. Firefox and personal files have not been removed."
  fi
}

# Main script execution
while true; do
  display_menu
  read -r opt

  case $opt in
    [1-5])
      case $opt in
        1) uninstall_edition "Firefox" ;;
        2) uninstall_edition "Beta" ;;
        3) uninstall_edition "Developer" ;;
        4) uninstall_edition "Nightly" ;;
        5) uninstall_edition "Extended" ;;
      esac
      break
      ;;

    6)
      uninstall_all_editions
      break
      ;;

    7)
      purge_firefox # That which is done, cannot be undone. Reinstalled, of course! But not undone.
      break
      ;;

    8)
      clear
      printf -- '\n%s\n\n' "Goodbye, $USER"
      exit 0
      ;;

    *)
      clear
      printf -- '\n\n%s\n' " $opt is an invalid option. Please select an option between 1-8 only" \
        " Press the [enter] key to continue. . ."
      read -r answer
      clear
      ;;
  esac
done
