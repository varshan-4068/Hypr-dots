#!/usr/bin/env bash

set -e

roll(){
	cat << "EOF"

                             _______  ___   __   __  _______  _______  __   __  ___   _______  _______ 
                            |       ||   | |  |_|  ||       ||       ||  | |  ||   | |       ||       |
                            |_     _||   | |       ||    ___||  _____||  |_|  ||   | |    ___||_     _|
                              |   |  |   | |       ||   |___ | |_____ |       ||   | |   |___   |   |  
                              |   |  |   | |       ||    ___||_____  ||       ||   | |    ___|  |   |  
                              |   |  |   | | ||_|| ||   |___  _____| ||   _   ||   | |   |      |   |  
                              |___|  |___| |_|   |_||_______||_______||__| |__||___| |___|      |___|  


EOF
}

clear 
roll

while true;do 

read -p " :: Do u wanna backup ur system with timeshift (y/n): " backup

case "$backup" in 
	[y]*)
		echo 
		sudo -E timeshift-launcher 
		sudo grub-mkconfig -o /boot/grub/grub.cfg
		break 
		;;
	[n]*)
		break
		;;
	*)
		echo 
		echo
		echo " :: Type either y(yes) or n(no) ::"
		echo 
		echo 
esac

done

while true;do

echo 

echo 

read -p " :: Do u wanna restore your backup (y/n): " restore

case "$restore" in 
	[y]*) 
		echo
		sudo timeshift --restore
		clear
		sleep 0.4
		break 
		;;
	[n]*) 
		clear
		sleep 0.4
		break 
		;;
	*)
		echo 
		echo 
		echo " :: Type either y(yes) or n(no) ::"
		echo 
		echo
esac

done
