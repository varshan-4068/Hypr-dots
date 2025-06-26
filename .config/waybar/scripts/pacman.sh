#!/usr/bin/env bash

pacmanlogo(){
	cat << "EOF"


				         ██████╗  █████╗  ██████╗███╗   ███╗ █████╗ ███╗   ██╗   
				         ██╔══██╗██╔══██╗██╔════╝████╗ ████║██╔══██╗████╗  ██║   
				         ██████╔╝███████║██║     ██╔████╔██║███████║██╔██╗ ██║   
				         ██╔═══╝ ██╔══██║██║     ██║╚██╔╝██║██╔══██║██║╚██╗██║   
				         ██║     ██║  ██║╚██████╗██║ ╚═╝ ██║██║  ██║██║ ╚████║   
				         ╚═╝     ╚═╝  ╚═╝ ╚═════╝╚═╝     ╚═╝╚═╝  ╚═╝╚═╝  ╚═══╝   
																																																													 

EOF
}

clear
pacmanlogo

while true;do

gum confirm " :: Do u wanna update ur pacman (y/n) ?" && pacmanup="yes" ||  pacmanup="no"

case "$pacmanup" in
	[yes]*)
		echo 
		sudo pacman -v -Syu --noconfirm
		sleep 1
		sudo pacman -Scc 
		sleep 1
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



