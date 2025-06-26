#!/usr/bin/env bash

reboot(){

gum style \
		--align center \
		--bold \
		--margin "2" \
		--padding "0 20 0 20" \
		--border rounded \
"
 ______    _______  _______  _______  _______  _______ 
|    _ |  |       ||  _    ||       ||       ||       |
|   | ||  |    ___|| |_|   ||   _   ||   _   ||_     _|
|   |_||_ |   |___ |       ||  | |  ||  | |  |  |   |  
|    __  ||    ___||  _   | |  |_|  ||  |_|  |  |   |  
|   |  | ||   |___ | |_|   ||       ||       |  |   |  
|___|  |_||_______||_______||_______||_______|  |___|  
"
}

reboot

while true;do

echo

gum confirm " :: Do u wanna reboot ur system? (y/n): " && choose="yes" || choose="no"

case "$choose" in
	[y]* )
		echo " :: Rebooting ur system now..... ::"
		systemctl reboot
		sleep 4
		break 
		;;
	[n]* )
		clear
		break 
		;;
	*)
		echo 
		echo 
		echo " :: Please answer yes(y) or no(n) ::"

esac

done


