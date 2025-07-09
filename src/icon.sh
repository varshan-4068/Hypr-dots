#!/usr/bin/env bash 

while true;do 

	gum confirm " :: Do u Wanna Install the Dracula Icon Theme ? (y/n): " && icons="yes" || icons="no"

	case "$icons" in 

		[yes]*)
		
		echo 

		icon=~/.icons/
		zip=Dracula.zip

		axel https://github.com/dracula/gtk/files/5214870/Dracula.zip

		unzip $zip

		if [ ! -d $icon ]; then
			mkdir $icon
		fi

		mv Dracula/ $icon
		rm $zip

		echo 
		echo " :: Icon Theme Was Successfully Installed & Select the Icon theme with nwg-look ::"
		echo 
		echo 
		break 
		;;
	  
	 [no]*)
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



