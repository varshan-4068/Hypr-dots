#!/usr/bin/env bash

paru=(
	hyprshot
	timeshift-autosnap
	battop
	waypaper
	multitail
	python-pywal16
)


while true;do

if [ -f /usr/bin/paru ]; then 
	break 
else 
	gum confirm " :: Do u wanna install the paru aur helper? (y/n): " && aur="yes" || aur="no"

	case "$aur" in
		[yes*])
			echo " :: Installing paru ( AUR helper ) ::"
			git clone https://aur.archlinux.org/paru.git
			cd paru/ || return
			makepkg -si 
			sudo rm -r ~/paru/
			cd ~ || return
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
			echo " :: Please answer yes(y) or no(n) ::"
			;;

		esac
	fi

done

while true;do

gum confirm " :: Do u wanna install some aur packages? (y/n): " && depen="yes" || depen="no"

case "$depen" in
	[yes]*)
		echo " :: Installing aur packages ::"

		paru -S "${paru[@]}" --noconfirm --needed
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
		echo ":: Please answer yes(y) or no(n) ::"
		;;
esac

done

