#!/usr/bin/env bash 

set -e 

while true;do

gum confirm " :: Do u wanna Install the Dracula Theme? (y/n): " && Dracula="yes" || Dracula="no"

case "$Dracula" in 
	[yes]*)
		gtkzip=gtk-master.zip
		theme=~/.themes
		axel https://github.com/dracula/gtk/archive/master.zip
		unzip $gtkzip
		mkdir $theme
		mv gtk-master/ $theme
		echo 
		echo " :: Dracula Theme is Installed Successfully & Select the Dracula Theme with nwg-look if the theme doesn't work by default ::"
		echo 
		rm $gtkzip
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
