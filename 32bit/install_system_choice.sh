#!/bin/sh
#
# Firefox automatic install for Linux
# v2.10.0

# Specify the directory where the Firefox installation scripts are located
SCRIPT_DIR="./32bit"

# Function to install a single Firefox edition
install_single_edition() {
  edition="$1"
  script_path="${SCRIPT_DIR}/Firefox_${edition}32.sh"

  if [ -f "$script_path" ]; then
    chmod +x "$script_path"  # Set the script as executable
    clear
    printf -- '\n%s\n\n' "You selected ${edition}"
    "$script_path"
  else
    clear
    printf -- '\n%s\n\n' "Script not found: $script_path"
  fi
}

# Function to install all 32-bit editions
install_all_editions() {
  clear
  printf -- '\n%s\n\n' "You selected to install ALL 32-bit editions"
  chmod +x "${SCRIPT_DIR}/install_all32.sh"
  "${SCRIPT_DIR}/install_all32.sh"
}

# Function to display the main menu
display_main_menu() {
  clear
  printf -- '\n%s\n' " ";
  printf -- '%s\n' "   Firefox automatic install for Linux" \
    " " \
    "           S Y S T E M - I N S T A L L - 32 - b i t" \
    " " \
    " " \
    " 1. Mozilla Firefox" \
    " 2. Firefox Beta" \
    " 3. Firefox Developer Edition" \
    " 4. Firefox Nightly" \
    " 5. Firefox Extended Support Release" \
    " 6. Install ALL 32-bit editions" \
    " 7. Exit" \
    "" ""
  printf " Please enter option [1 - 7]: "
}

# Main script execution
while true; do
  display_main_menu
  read -r opt

  case $opt in
    1)
      install_single_edition "Stable"
      break
      ;;
    2)
      install_single_edition "Beta"
      break
      ;;
    3)
      install_single_edition "Developer_Edition"
      break
      ;;
    4)
      install_single_edition "Nightly"
      break
      ;;
    5)
      install_single_edition "Extended_Support_Release"
      break
      ;;
    6)
      install_all_editions
      break
      ;;
    7)
      clear
      printf -- '\n%s\n\n' "Goodbye, $USER"
      exit 0
      ;;
    *)
      clear
      printf -- '\n\n%s\n' " $opt is an invalid option. Please select an option between 1-7 only" \
        " Press the [enter] key to continue. . ."
      read -r  # Reading input without storing it in any variable
      ;;
  esac
done
