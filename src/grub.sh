
boot(){

gum style \
		--align center \
		--bold \
"
		 _______  ______    __   __  _______    _______  __   __  _______  __   __  _______  _______ 
		|       ||    _ |  |  | |  ||  _    |  |       ||  | |  ||       ||  |_|  ||       ||       |
		|    ___||   | ||  |  | |  || |_|   |  |_     _||  |_|  ||    ___||       ||    ___||  _____|
		|   | __ |   |_||_ |  |_|  ||       |    |   |  |       ||   |___ |       ||   |___ | |_____ 
		|   ||  ||    __  ||       ||  _   |     |   |  |       ||    ___||       ||    ___||_____  |
		|   |_| ||   |  | ||       || |_|   |    |   |  |   _   ||   |___ | ||_|| ||   |___  _____| |
		|_______||___|  |_||_______||_______|    |___|  |__| |__||_______||_|   |_||_______||_______|

"
}

clear
boot

while true;do 

echo 

read -p " :: Do u wanna install grub themes by ChrisTitusTech? (y/n): " chris

case "$chris" in
	[y]*)
		echo 
		echo " :: Cloning Themes ::"
		echo
		git clone https://github.com/ChrisTitusTech/Top-5-Bootloader-Themes.git
		cd Top-5-Bootloader-Themes
		sudo ./install.sh ## then select the theme u wanted u install 
		cd ~
		break 
		;;
	[n]*)
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

