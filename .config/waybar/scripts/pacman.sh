pacman(){
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
pacman

while true;do

read -p " :: Do u wanna update ur pacman (y/n): " pacman 

case "$pacman" in
	[y]*)
		echo 
		sudo pacman -v -Syu --noconfirm
		sleep 1
		sudo pacman -Scc 
		sleep 1
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

while true;do


echo 

echo


