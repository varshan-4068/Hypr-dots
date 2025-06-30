#!/usr/bin/env bash 

set -e 

while true;do

gum confirm " :: Do u wanna Install the Dracula Theme? (y/n): " && Dracula="yes" || Dracula="no"

case "$Dracula" in 
	[yes]*)
		gtkzip=gtk-master.zip
		theme=~/.themes
		if [ ! -d ~/.themes ]; then 
			mkdir $theme
		fi 
		cd ~
		axel https://github.com/dracula/gtk/archive/master.zip
		unzip $gtkzip 
		rm $gtkzip
		mv gtk-master/ ~/.themes/
		echo 
		echo " :: Dracula Theme is Installed Successfully & Select the Dracula Theme named as gtk-master with nwg-look ::"
		echo 
		sleep 2
		echo 
		break 
		;;
	[no]*)
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
