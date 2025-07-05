#!/usr/bin/env bash

#install scripts directory
dot_dir=~/Hypr-dots/src

#logo
source $dot_dir/print_logo.sh

#exit if any issues..
set -e

echo

echo

#sourcing backup script
source $dot_dir/backup.sh

cd ~

#sourcing pacman needed packages installation scripts..
source $dot_dir/pacman.sh

#sourcing aur needed packages installation scripts..
source $dot_dir/aur.sh

#sourcing cpufreq..
source $dot_dir/cpufreq.sh

#sourcing ani-cli installation tool.
source $dot_dir/ani-cli.sh

cd $dot_dir

#sourcing the theme installation scripts..
source $dot_dir/theme.sh

#sourcing the icon installation scripts..
source $dot_dir/icon.sh

#sourcing the systemservices enabling script like nm and bluetooth.
source $dot_dir/systemservice.sh

cd ~

#sourcing the dotfiles folder to install the dotfiles
source $dot_dir/dotfiles.sh

#sourcing the root folder to install the dotfiles in root directory
source $dot_dir/root.sh

#ufw script
source $dot_dir/ufw.sh

#waybar theme changing script
source $dot_dir/waybar.sh

#grub themes script..
source $dot_dir/grub.sh

#sddm theme script..
source $dot_dir/sddm.sh

#reboot script to take changes effectively
source $dot_dir/reboot.sh

clear 

gum spin --spinner dot --title="For restoring your configs run restore.sh from $dot_dir " sleep 2.4

clear
