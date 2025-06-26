#!/usr/bin/env bash


restore(){

	gum style \
		--bold \
		--border rounded \
		--align center \
		--margin "1" \
		--padding "0 26 0 23" \
'
 ______    _______  _______  _______  _______  ______    _______ 
|    _ |  |       ||       ||       ||       ||    _ |  |       |
|   | ||  |    ___||  _____||_     _||   _   ||   | ||  |    ___|
|   |_||_ |   |___ | |_____   |   |  |  | |  ||   |_||_ |   |___ 
|    __  ||    ___||_____  |  |   |  |  |_|  ||    __  ||    ___|
|   |  | ||   |___  _____| |  |   |  |       ||   |  | ||   |___ 
|___|  |_||_______||_______|  |___|  |_______||___|  |_||_______|

'
}

clear 
restore

set -e 

echo 

while true;do

gum confirm " :: Do wanna restore your backups? (y/n): " && backups="yes" || backups="no"

case "$backups" in 

	yes) 
		clear
		echo 
		echo " :: Restoring your Backup files :: "
		cd ~
		sudo cp -r ~/backup/.config/ ~
		sudo cp -r ~/backup/.local/ ~
		rm -r backup/
		echo
		echo " :: Select the timeshift snapshot with H tag to backup.."
		echo
		sudo timeshift --restore
		clear
		break
		;;
	no)
		clear
		break
		;;
esac

done
