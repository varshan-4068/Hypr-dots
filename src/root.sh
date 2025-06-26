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
	
	cd ~
	cd Hyprland-Arch/
	echo
	echo " :: Entered the Hyprland-Arch Directory ::"
	echo
	cd root/ 
	sudo cp .bashrc .bash_profile /root
	sudo cp -r nvim/ starship.toml alacritty/ /root/.config/
	sudo mkdir -p .cache/ /root 
	sudo cp -r ~/.cache/wal/ /root/.cache
	sudo ln -sf ~/.cache/wal/sequences /root/.cache/wal/sequences
	echo " :: Copied the Dotfiles successfully ::"
	echo
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
