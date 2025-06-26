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

gum confirm " :: Do u wanna install Dotfiles and some other files? (y/n): " && dot="yes" || dot="no"

case "$dot" in 
[yes]*)

	wallpaper=~/.config/backgrounds/lh.jpeg
	conf=~/.config
	usr=/usr/bin
	bash=mybash/

	cd Hyprland-Arch/ || return
	echo 
	gum spin --spinner line --title="Installing the configs Wait a few Seconds :: " sleep 6
	cp -r .config/ ~
	cd conf/ || return
	sudo cp -r pacman.conf spotify-launcher.conf /etc
	cd ../
	cd gtk/ || return
	cp -r gtk-3.0/ gtk-4.0/ nwg-look/ $conf
	cp .gtkrc-2.0 ~
	cd ../
	cd $bash || return
	cp starship.toml $conf
	cp .bashrc .bash_profile ~
	cd ../
	sleep 3.5
	swww-daemon &
	swww img $wallpaper --transition-type wipe --transition-fps 60 --transition-duration 2 
	wal -q -e -i $wallpaper
	echo 
	echo 
	sudo pacman -Sy
	systemctl enable libvirtd 
	systemctl start libvirtd 
	echo 
	echo " :: Copied the Dotfiles successfully ::"
	echo
	echo 
	gum spin --spinner line --title="Chmoding the Executable files.. :: " sleep 4
	echo 
	echo 
	cd src/ || return
	sudo cp rofi-power-menu $usr
	sudo chmod +x restore.sh 
	sudo chmod +x theme.sh 
	sudo chmod +x icon.sh
	cd $conf/waybar/scripts/ || return
	sudo chmod +x ani-cli.sh aur.sh disk_script.sh pacman.sh timeshift.sh waybar.sh
	waybar &
	cd $conf/hypr || return
	sudo chmod +x float.sh
	cd ~ || return
	sudo chmod +x $usr/rofi-power-menu
	echo " :: Chmoding the Executable files was Successfull"
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


while true;do

	my_dir=~/.config/rofi/

	if [ -d my_dir ]; then
		mkdir ~/.config/rofi
	fi

	cd $my_dir || return

	my_file=config.rasi


	cd themes/ || return

	gum confirm " Do u wanna Install Rofi With Image? (y/n): " && image="yes" || image="no"

	case "$image" in 
		[yes]*)
			if [ -f $my_file ];then 
			 rm $my_file
			fi
			cd rofi-image-style || return
			cp $my_file $my_dir
			clear 
			gum spin --spinner dot --title="Successfully Updated the Theme ::" sleep 3.4
			clear
			cd ~ || return
			break 
			;;
		[no]*)
			break 
			clear
			;;
		*)
			echo 
			echo 
			echo " :: Type either y(yes) or n(no) :: "
			echo 
			echo
	esac
	
done 

while true;do

	gum confirm " Do u wanna Install Rofi Without Image? (y/n): " && rofi="yes" || rofi="no"

	case "$rofi" in
		[yes]*)	
			my_dir=~/.config/rofi/
			my_file=config.rasi
			if [ -f $my_file ];then 
			 rm $my_file
			fi
			cd $my_dir || return
			cd themes/ || return
			cd rofi-style || return
			cp $my_file $my_dir
			clear 
			gum spin --spinner dot --title="Successfully Updated the Theme ::" sleep 3.4
			clear
			break 
			;;
		
		[no]*)
			break 
			;;
		*)
			echo 
			echo 
			echo " :: Type either y(yes) or n(no) :: "
			echo 
			echo
	esac

done

