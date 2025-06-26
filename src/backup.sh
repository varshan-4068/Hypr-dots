#!/usr/bin/env bash

backup=~/backup/

gum spin --spinner line --title="Backuping your configs in $backup" sleep 3.8
cd ~ || return

if [ -d $backup ]; then
	sudo rm -r $backup
fi

mkdir $backup
cp -r ~/.config/ $backup
cp -r ~/.local/ $backup

while true;do

gum confirm " Do u wanna snapshot your system with timeshift ?" && snapshot="yes" || snapshot="no"

	case "$snapshot" in
		[yes]*)
			sudo timeshift --create --comments "Snapshot before installing the hyprland dotfiles.." --tags H
			echo 
			break
			;;
		[no]*)
			break
			;;
		*)
			echo 
			echo 
			echo " :: Either Select Yes or No :: "

	esac

done
