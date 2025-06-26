#!/usr/bin/env bash

waybar(){

gum style \
		--border rounded \
		--align center \
		--padding="0 22 0 22" \
		--bold \
"
 _     _  _______  __   __  _______  _______  ______     
| | _ | ||   _   ||  | |  ||  _    ||   _   ||    _ |    
| || || ||  |_|  ||  |_|  || |_|   ||  |_|  ||   | ||    
|       ||       ||       ||       ||       ||   |_||_   
|       ||       ||_     _||  _   | |       ||    __  |  
|   _   ||   _   |  |   |  | |_|   ||   _   ||   |  | |  
|__| |__||__| |__|  |___|  |_______||__| |__||___|  |_|  

"
}

clear 
waybar


echo "---------------------------------------------------------------------------------------------------------"
echo 
echo
echo "                                     :: Dark Pink Theme = d             ::                                    "
echo  
echo "                                     :: Colourful-waybar-theme = w      ::                                    "
echo 
echo "                                     :: To Cancel the Script = n        ::                                    "
echo 
echo
echo
echo "-------------- Above Listed Are the Codes to Select your choice of theme on the prompt below ------------"
echo 
echo 
echo 

while true;do 

	read -rp " :: Type The Code of the preffered theme from the above list (d/w/n): " theme 

	case "$theme" in 
		[d]*)
			echo
			cd ~/.config/waybar || return
			cd ~/.config/waybar/'style.css collections'/'dark pink style'/ || return
			cp config style.css ~/.config/waybar
			echo
			echo " :: Successfully installed the configuration files of Dark pink theme ::"
			sleep 0.5
			break
			;;
		[w]*)
			echo 
			echo 
			cd ~ || return
			cd ~/.config/waybar || return
			cd ~/.config/waybar/'style.css collections'/'colourful waybar style'/ || return
			cp config style.css ~/.config/waybar
			echo " :: Successfully installed the configuration files of Colourful Waybar Theme ::"
			sleep 0.5
			break
			;;
		[n]*)
			clear
			sleep 0.2
			break 
			;;
		*)
			echo 
			echo 
			echo " :: Type only any of the codes of the listed themes that u would like to install :: "
			echo 
			echo 
	esac
done

clear

