#!/usr/bin/env bash 

set -e 

echo 

echo

while true;do

read -rp " :: Do u wanna Install the Dracula Theme? (y/n): " Dracula

case "$Dracula" in 
	[y]*)
		gtkzip=gtk-master.zip
		theme=~/.themes
		echo
		axel https://github.com/dracula/gtk/archive/master.zip
		unzip $gtkzip
		mkdir $theme
		mv gtk-master/ $theme
		echo 
		echo " :: Dracula Theme is Installed Successfully & Select the Dracula Theme with nwg-look if the theme doesn't work by default ::"
		echo 
		rm $gtkzip
		sleep 3
		clear
		break 
		;;
	[n]*)
		break 
		;;
	*)
		echo 
		echo 
		echo " :: Type either yes(y) or no(n) :: "
		echo 
		echo 
esac

done
