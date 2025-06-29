#!/usr/bin/env bash

sddm(){

gum style \
		--align center \
		--bold \
"
		 _______  ______   ______   __   __    _______  __   __  _______  __   __  _______  _______ 
		|       ||      | |      | |  |_|  |  |       ||  | |  ||       ||  |_|  ||       ||       |
		|  _____||  _    ||  _    ||       |  |_     _||  |_|  ||    ___||       ||    ___||  _____|
		| |_____ | | |   || | |   ||       |    |   |  |       ||   |___ |       ||   |___ | |_____ 
		|_____  || |_|   || |_|   ||       |    |   |  |       ||    ___||       ||    ___||_____  |
		 _____| ||       ||       || ||_|| |    |   |  |   _   ||   |___ | ||_|| ||   |___  _____| |
		|_______||______| |______| |_|   |_|    |___|  |__| |__||_______||_|   |_||_______||_______|

"
}

clear
sddm

echo "----------------------------------------------------------------------------------------------------------------"
echo
echo "                                     :: Maldives Inspired sddm theme = M  ::                                    "
echo  
echo "                                     :: sddm-astronaut-theme = S          ::                                    "
echo 
echo "                                     :: To Cancel the Script = n          ::                                    "
echo 
echo
echo "----------------- Above Listed Are the Codes to Select your choice of theme on the prompt below ----------------"
echo 
while true;do

echo

	sddm_theme=$(echo -e "M\nS\nn" | gum choose )

case "$sddm_theme" in
[S]*)
	echo 
	sudo cp ~/Hyprland-Arch/sddm/sddm.conf /etc
	sh -c "$(curl -fsSL https://raw.githubusercontent.com/keyitdev/sddm-astronaut-theme/master/setup.sh)"
	sudo cp ~/Hyprland-Arch/sddm/sddm.conf /etc
	echo 
	echo " :: Everything is Installed perfectly just reboot your system to get perfect results ::"
	echo
	echo
	break 
	;;
[M]*)
	echo 
	sudo cp ~/Hyprland-Arch/sddm/sddm.conf /etc
	sudo cp -r ~/Hyprland-Arch/sddm/sddm-theme/ /usr/share/sddm/themes/
	gum spin --spinner line --title="Installing the maldives Inspired sddm theme.." sleep 3.8
	echo
	echo " :: Everything is Installed perfectly just reboot your system to get perfect results ::"
	echo 
	echo 
	break
	;;
[n]*)
	echo
	echo " :: Everything is Installed perfectly just reboot your system to get perfect results ::"
	echo 
	echo 
	break 
	;;
*)
	echo 
	echo 
	echo " :: Please answer yes(y) or no(n) ::"
	echo 
	break
	;;

esac

done


while true;do

gum confirm " :: Do u wanna delete the directory Hyprland-Arch/ that has been cloned to your system? (y/n): " && del="yes" || del="no"

case "$del" in
 [yes]*)
		cd ~ || return
		sudo rm -r Hyprland-Arch/
		echo 
		echo
		echo " :: Deleted the Hyprland-Arch/ directory successfully ::"
		echo 
		echo
		sleep 1.2
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
		echo
		;;
	
esac
done
