#!/usr/bin/env bash

files(){

	gum style \
		--border rounded \
		--align center \
		--width 0 \
		--bold \
"
 ___     ___   ______  _____  ____  _        ___  _____
|   \   /   \ |      ||     ||    || |      /  _]/ ___/
|    \ |     ||      ||   __| |  | | |     /  [_(   \_ 
|  D  ||  O  ||_|  |_||  |_   |  | | |___ |    _]\__  |
|     ||     |  |  |  |   _]  |  | |     ||   [_ /  \ |
|     ||     |  |  |  |  |    |  | |     ||     |\    |
|_____| \___/   |__|  |__|   |____||_____||_____| \___|
																											 
"

}

clear
files

while true;do

echo

gum confirm " :: Do u wanna install Dotfiles and some other files in the root Directory ? (y/n): " && dots="yes" || dots="no"

case "$dots" in 
[yes]*)
	
	cd ~ || return
	cd Hypr-dots/ || return
	echo
	echo " :: Entered the Hypr-dots Directory ::"
	echo
	cd root/ || return
	sudo cp .bashrc .bash_profile /root

	if [ -d /root/.config/ ]; then 
		sudo mkdir /root/.config/
	fi

	sudo cp -r nvim/ starship.toml alacritty/ /root/.config/

	echo " :: Copied the Dotfiles successfully ::"
	echo
	sleep 0.4
	echo 

	clear
	break 
	;;
[no]*)
	clear
	break 
	;;
*)
	echo 
	echo 
	echo " :: Please answer yes(y) or no(n) ::"
	echo
	;;

esac

done
