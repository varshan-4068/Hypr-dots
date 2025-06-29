#!/usr/bin/env bash 

set -e 

while true;do

gum confirm " :: Do u wanna Install the Graphite Theme? (y/n): " && Graphite="yes" || Graphite="no"

case "$Graphite" in 
	[yes]*)
		gtkzip=Graphite-gtk-theme-main.zip
		theme=~/.themes
		if [ ! -d ~/.themes ]; then 
			mkdir $theme
		fi 
		cd ~
		axel https://github.com/vinceliuice/Graphite-gtk-theme/archive/refs/heads/main.zip 
		unzip $gtkzip 
		rm $gtkzip
		./Graphite-gtk-theme-main/install.sh 
		echo 
		echo " :: Graphite Theme is Installed Successfully & Select the Graphite Theme with nwg-look if the theme doesn't work by default ::"
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
