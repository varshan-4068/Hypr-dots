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

read -rp " :: Do u wanna install Dotfiles and some other files? (y/n): " dot

case "$dot" in 
[y]*)

	wallpaper=~/.config/backgrounds/lh.jpeg
	conf=~/.config
	usr=/usr/bin
	bash=mybash/

	cd Hyprland-Arch/ || return
	echo
	echo " :: Entered the Hyprland-Arch Directory ::"
	echo
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
	swww-daemon &
	swww img $wallpaper --transition-type wipe --transition-fps 60 --transition-duration 2 
	wal -q -e -i $wallpaper
	echo 
	echo 
	sudo pacman -Sy
	systemctl enable libvirtd 
	systemctl start libvirtd 
	systemctl status libvirtd
	echo 
	echo " :: Copied the Dotfiles successfully ::"
	echo
	echo 
	echo " :: Chmoding the Executable files.. ::"
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
[n]*)
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

	echo

	read -rp " Do u wanna Install Rofi With Image? (y/n): " image

	case "$image" in 
		[y]*)
			if [ -f $my_file ];then 
			 rm $my_file
			fi
			cd rofi-image-style || return
			cp $my_file $my_dir
			clear 
			echo " :: Successfully Updated the Theme ::"
			sleep 0.5 
			clear
			cd ~ || return
			break 
			;;
		[n]*)
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

while true;do

	echo 
	echo 

	read -rp " Do u wanna Install Rofi Without Image? (y/n): " rofi

	case "$rofi" in
		[y]*)	
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
			echo " :: Successfully Updated the Theme ::"
			sleep 0.5
			clear
			break 
			;;
		
		[n]*)
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

