#!/usr/bin/env bash

sddm(){

gum style \
		--align center \
		--bold \
"
		 _______  ______   ______   __   __    _______  __   __  _______  __   __  _______  _______ 
		|       ||      | |      | |  |_|  |  |       ||  | |  ||       ||  |_|  ||       ||       |
		|  _____||  _    ||  _    ||       |  |_     _||  |_|  ||    ___||       ||    ___||  _____|
		| |_____ | | |   || | |   ||       |    |   |  |       ||   |___ |       ||   |___ | |_____ 
		|_____  || |_|   || |_|   ||       |    |   |  |       ||    ___||       ||    ___||_____  |
		 _____| ||       ||       || ||_|| |    |   |  |   _   ||   |___ | ||_|| ||   |___  _____| |
		|_______||______| |______| |_|   |_|    |___|  |__| |__||_______||_|   |_||_______||_______|

"
}

clear
sddm

while true;do

echo

gum confirm " :: Do u wanna install sddm themes? (y/n): " && lm="yes" || lm="no"

case "$lm" in
[yes]*)
	echo 
	sh -c "$(curl -fsSL https://raw.githubusercontent.com/keyitdev/sddm-astronaut-theme/master/setup.sh)"
	echo 
	echo " :: Everything is Installed perfectly just reboot your system to get perfect results ::"
	echo
	echo
	break 
	;;
[no]*)
	echo
	echo " :: Everything is Installed perfectly just reboot your system to get perfect results ::"
	echo 
	echo 
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


while true;do

gum confirm " :: Do u wanna delete the directory Hyprland-Arch/ that has been cloned to your system? (y/n): " && del="yes" || del="no"

case "$del" in
 [yes]*)
		cd ~ || return
		sudo rm -r Hyprland-Arch/
		echo 
		echo
		echo " :: Deleted the Hyprland-Arch/ directory successfully ::"
		echo 
		echo
		sleep 1.2
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
		echo
		;;
	
esac
done
