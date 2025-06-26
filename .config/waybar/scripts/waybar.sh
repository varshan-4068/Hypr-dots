#!/usr/bin/bash 

set -e

waybar(){

	gum style \
		--border rounded \
		--align center \
		--bold  \
"
	 __   __  _______  ______   _______  _______  _______    _______  _______  __    _  _______   
	|  | |  ||       ||      | |   _   ||       ||       |  |       ||       ||  |  | ||       |  
	|  | |  ||    _  ||  _    ||  |_|  ||_     _||    ___|  |       ||   _   ||   |_| ||    ___|  
	|  |_|  ||   |_| || | |   ||       |  |   |  |   |___   |       ||  | |  ||       ||   |___   
	|       ||    ___|| |_|   ||       |  |   |  |    ___|  |      _||  |_|  ||  _    ||    ___|  
	|       ||   |    |       ||   _   |  |   |  |   |___   |     |_ |       || | |   ||   |      
	|_______||___|    |______| |__| |__|  |___|  |_______|  |_______||_______||_|  |__||___|      

"

}

clear
waybar

echo 
echo 

while true; do

gum confirm " :: Do u wanna Change your Waybar Theme? (y/n): " && change="yes" || change="no"

case "$change" in 
	[yes]*)

waybar(){
	cat << EOF 
   			       _     _  _______  __   __  _______  _______  ______    
   			      | | _ | ||   _   ||  | |  ||  _    ||   _   ||    _ |   
   			      | || || ||  |_|  ||  |_|  || |_|   ||  |_|  ||   | ||   
   			      |       ||       ||       ||       ||       ||   |_||_  
   			      |       ||       ||_     _||  _   | |       ||    __  | 
   			      |   _   ||   _   |  |   |  | |_|   ||   _   ||   |  | | 
   			      |__| |__||__| |__|  |___|  |_______||__| |__||___|  |_| 

EOF
}

clear
waybar

echo "----------------------------------------------------------------------------------------------------------------"
echo
echo "                                       :: Dark Pink Theme = d            ::                                 "
echo  
echo "                                       :: Colorful-waybar-theme = w      ::                                 "
echo 
echo "                                       :: To Cancel the Script = n       ::                                 "
echo 
echo 
echo "------------------Above Listed Are the Codes to Select your choice of theme on the prompt below ----------------"
echo 
echo 

while true;do 

	read -rp " :: Type The Code of the preffered theme from the above list (d/w/n): " theme

	case "$theme" in 
		[d]*)
			echo
			cd ~/.config/waybar/
			rm config style.css 
			cd ~/.config/waybar/'style.css collections'/'dark pink style'/
			cp config style.css ~/.config/waybar/
			echo
			echo " :: Successfully installed the configuration files of Dark pink theme ::"
			clear
			sleep 0.2
			break
			;;
		[w]*)
			echo 
			echo 
			cd ~
			cd ~/.config/waybar/
			rm config style.css 
			cd ~/.config/waybar/'style.css collections'/'colourful waybar style'/
			cp config style.css ~/.config/waybar
			echo " :: Successfully installed the configuration files of Colorful Waybar theme ::"
			clear
			sleep 0.2
			break
			;;
		[n]*)
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

	break 

	;;

[n]*)
	break 
	;;

*)
	echo 
	echo 
	echo " :: Type either y(yes) or n(no) ::"
	echo 
	echo 
esac

done



my_dir=~/.config/rofi/

if [ -d my_dir ]; then
	mkdir ~/.config/rofi
fi


cd $my_dir

my_file=config.rasi

cd themes/

while true; do
	
gum confirm " :: Do u wanna Install Rofi With Image? (y/n): " && image="yes" || image="no"

case "$image" in 
	[yes]*)
		if [ -f $my_file ]; then
			rm my_file
		fi
		cd rofi-image-style
		cp $my_file $my_dir
		clear 
		echo " :: Successfully Updated the Theme ::"
		sleep 0.5 
		clear
		exit
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

while true;do 

gum confirm " :: Do u wanna Install Rofi Without Image? (y/n): " && rofi="yes" || rofi="no"

case "$rofi" in
  [yes]*)	
		if [ -f $my_file ];then
			rm my_file
		fi
		cd rofi-style
		cp $my_file $my_dir
		clear 
		echo " :: Successfully Updated the Theme ::"
		sleep 0.5
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
		echo " :: Type either y(yes) or n(no) :: "
		echo 
		echo
esac

done




