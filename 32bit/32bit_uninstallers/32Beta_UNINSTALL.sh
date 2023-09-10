##!/bin/sh
#
# Firefox Automatic Install for Linux -- Uninstall Firefox (beta) -- File can be used independently.

clear;
# Function to prompt for uninstallation confirmation
prompt_for_uninstallation() {
  printf "Do you want to uninstall Mozilla Firefox Beta 32-bit? \n"
  printf "This will remove all installed files and desktop icons. [Y/N]: "
  read -r choice
  case "$choice" in
    [yY]|[yY][eE][sS])
      uninstall_firefox
      ;;
    *)
      clear;
      printf "Uninstallation has been canceled. No changes have been made. \n"
      exit 0
      ;;
  esac
}

# Function to uninstall Firefox
uninstall_firefox() {
  # Prompt for installation path or use default
  clear;
  printf "Please specify the installation path for Mozilla Firefox Beta (without the trailing slash).\n"
  printf "Or press Enter for the default path: /opt/Mozilla_Firefox_Beta32 "
  read -r uninstall_path
  if [ -z "$uninstall_path" ]; then
    uninstall_path="/opt/Mozilla_Firefox_Beta32"
  fi

  # Uninstalling Firefox notice
  printf "\n Uninstalling Mozilla Firefox Beta...\n"

  # Small delay to give user time to read the above notice
  sleep 3

  # Remove installed files
  sudo rm -rf "$uninstall_path"

  # Menu shortcuts
  sudo rm -r -f /usr/share/applications/Mozilla_Firefox_Beta32.desktop

  # Desktop shortcuts
  sudo rm -r -f /etc/skel/Desktop/Mozilla_Firefox_Beta32.desktop

  # determine the XDG_DESKTOP_DIR, then the DESKTOP_NAME for multi language support,
  # this assumes that every user has the same locale or Desktop Name
  DESKTOP_NAME=$(basename "$(sudo xdg-user-dir DESKTOP)")
  # Current desktop shortcuts
  sudo rm -r -f /home/*/"$DESKTOP_NAME"/Mozilla_Firefox_Beta32.desktop

  # PURGE
  # Uncomment if you wish to delete file cache.
  # sudo rm -r -f /home/*/.cache/mozilla/firefox/*.default-beta*/ ;
  # Uncomment if you wish to delete configuration and profile files.
  # sudo rm -r -f /home/*/.mozilla/firefox/*.default-beta*/ ;


  # exit notice
printf "\n%s\n" \
    " Thank you for using Mozilla Firefox Beta." \
    " Firefox Beta has been deleted and uninstalled. Per your request." \
    " Really sorry to see you go. Hope to see you again real soon."

  # exit
  exit 0
}

# Call the prompt function
prompt_for_uninstallation
