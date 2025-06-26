
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

read -p " :: Do u wanna install Dotfiles and some other files? (y/n): " dot

case "$dot" in 
[y]*)

	wallpaper=~/.config/backgrounds/lh.jpeg
	conf=~/.config
	usr=/usr/bin
	bash=mybash/

	cd Hypr-dots/
	echo
	echo " :: Entered the Hypr-dots Directory ::"
	echo
	cp -r .config/ ~
	cd conf/ 
	sudo cp -r pacman.conf spotify-launcher.conf /etc
	cd ../
	cd gtk/ 
	cp -r gtk-3.0/ gtk-4.0/ nwg-look/ $conf
	cp .gtkrc-2.0 ~
	cd ../
	cd $bash
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
	cd src/
	sudo cp rofi-power-menu $usr
	sudo chmod +x restore.sh 
	sudo chmod +x theme.sh 
	sudo chmod +x icon.sh
	cd $conf/waybar/scripts/
	sudo chmod +x ani-cli.sh aur.sh disk_script.sh pacman.sh timeshift.sh waybar.sh
	waybar &
	cd $conf/hypr 
	sudo chmod +x float.sh
	cd ~
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

	cd $my_dir

	my_file=config.rasi


	cd themes/

	echo

	read -p " Do u wanna Install Rofi With Image? (y/n): " image

	case "$image" in 
		[y]*)
			if [ -f $my_file ];then 
			 rm $my_file
			fi
			cd rofi-image-style
			cp $my_file $my_dir
			clear 
			echo " :: Successfully Updated the Theme ::"
			sleep 0.5 
			clear
			cd ~
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

	read -p " Do u wanna Install Rofi Without Image? (y/n): " rofi

	case "$rofi" in
		[y]*)	
			my_dir=~/.config/rofi/
			my_file=config.rasi
			if [ -f $my_file ];then 
			 rm $my_file
			fi
			cd $my_dir
			cd themes/
			cd rofi-style
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

