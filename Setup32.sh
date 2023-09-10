#!/bin/sh
#
# Firefox automatic install for Linux - 32-bit
# v3.0.0
#

# Paths to sub-scripts
install_personal_choice="./personal32/install_personal_choice.sh"
uninstall_personal_choice="./personal32/uninstallers/uninstall_personal_choice.sh"
install_system_choice="./32bit/install_system_choice.sh"
uninstall_system_choice="./32bit/32bit_uninstallers/uninstall_system_choice.sh"

# Function to set executable permission and execute sub-script
execute_sub_script() {
  script_path="$1"
  if [ -f "$script_path" ]; then
    chmod +x "$script_path"
    exec "$script_path"  # Replace the current process with the sub-script's process
  else
    printf -- '\n%s\n' "Script not found: $script_path"
    exit 1
  fi
}

# Function to display the menu
display_menu() {
  printf -- '\n%s\n' " "
  printf -- '%s\n' "   Firefox automatic install for Linux" \
    " " \
    "           M A I N - M E N U" \
    " " \
    " " \
    " 1. Personal - Install or remove Firefox for only yourself" \
    " 2. System - Install or remove Firefox for everyone (requires admin access)" \
    " 3. Exit" \
    "" ""
  printf " Please enter option [1 - 3]: "
}

# Function to display the Firefox personal menu
display_personal_menu() {
  printf -- '\n%s\n' " "
  printf -- '%s\n' "   Firefox automatic install for Linux" \
    " " \
    "           P E R S O N A L - M E N U" \
    " " \
    " " \
    "  1. Install Firefox for yourself" \
    "  2. Uninstall Firefox for yourself" \
    "  3. Back to Main Menu" \
    "" ""
  printf " Please enter option [1 - 3]: "
}

# Function to display the Firefox system menu
display_system_menu() {
  printf -- '\n%s\n' " "
  printf -- '%s\n' "   Firefox automatic install for Linux" \
    " " \
    "           S Y S T E M - M E N U" \
    " " \
    " " \
    "  1. Install Firefox for everyone" \
    "  2. Uninstall Firefox for everyone" \
    "  3. Back to Main Menu" \
    "" ""
  printf " Please enter option [1 - 3]: "
}

# Function to handle user input for Firefox personal menu
handle_personal_input() {
  personal_opt="$1"
  case "$personal_opt" in
    1)
      clear
      execute_sub_script "$install_personal_choice"
      ;;

    2)
      clear
      execute_sub_script "$uninstall_personal_choice"
      ;;

    3)
      clear
      return 1  # Return 1 to indicate going back to the main menu
      ;;

    *)
      clear
      printf -- '\n\n%s\n' " $personal_opt is an invalid option. Please select an option between 1-3 only." \
        " Press the [enter] key to continue. . ."
      read -r
      ;;
  esac
}

# Function to handle user input for Firefox system menu
handle_system_input() {
  system_opt="$1"
  case "$system_opt" in
    1)
      clear
      execute_sub_script "$install_system_choice"
      ;;

    2)
      clear
      execute_sub_script "$uninstall_system_choice"
      ;;

    3)
      clear
      return 1  # Return 1 to indicate going back to the main menu
      ;;

    *)
      clear
      printf -- '\n\n%s\n' " $system_opt is an invalid option. Please select an option between 1-3 only." \
        " Press the [enter] key to continue. . ."
      read -r
      ;;
  esac
}

# Function to handle user input for the main menu
handle_user_input() {
  opt="$1"
  case "$opt" in
    1)
      # Firefox personal menu.
      while true; do
        clear
        display_personal_menu
        read -r personal_opt
        handle_personal_input "$personal_opt" || break  # Break the loop if return value is non-zero
      done
      ;;

    2)
      # Firefox system menu.
      while true; do
        clear
        display_system_menu
        read -r system_opt
        handle_system_input "$system_opt" || break  # Break the loop if return value is non-zero
      done
      ;;

    3)
      clear
      printf -- '\n%s\n\n' " Goodbye, $USER"
      exit 0
      ;;

    *)
      clear
      printf -- '\n\n%s\n' " $opt is an invalid option. Please select an option between 1-3 only." \
        " Press the [enter] key to continue. . ."
      read -r
      ;;
  esac
}

# Trap the SIGINT signal (Ctrl+C) and handle it gracefully
trap 'clear; printf -- "\n%s\n" "Script interrupted. Exiting..." ; exit 1' INT

# Main script execution
while true; do
  clear
  display_menu
  read -r opt
  handle_user_input "$opt"
done

# Other than removing all my little developer notes. Do you know a better way to improve this? Speak up!
#
# One of the cool things about Linux and code, in general, is people like yourself.
# We all make it possible, and we all start somewhere.
#
# An important thing to remember is no matter how good, or bad you are at coding, there will always be people who will discourage you.
# Only you can carry yourself forward. Take that first step, and then another and another. Never give up. Never surrender.
#
# -- As always, Happy Browsing! 
#
