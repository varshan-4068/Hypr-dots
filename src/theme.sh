#!/usr/bin/env bash 

set -e 

while true;do

gum confirm " :: Do u wanna Install the Tokyonight Theme? (y/n): " && Tokyonight="yes" || Tokyonight="no"

case "$Tokyonight" in 
	[yes]*)
		theme=~/.themes
		gtk_theme=Tokyonight-Dark/
		if [ ! -d ~/.themes ]; then 
			mkdir $theme
		fi 
		cd ~/Hyprland-Arch/gtk/ 
		sudo cp -r $gtk_theme /usr/share/themes/
		cp -r $gtk_theme $theme
		echo 
		echo " :: Tokyonight Theme is Installed Successfully & Select the Tokyonight Theme with nwg-look ::"
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
