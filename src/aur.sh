#!/usr/bin/env bash

paru=(
	hyprshot	#screenshot utility
	timeshift-autosnap	#timeshift snapshot automation 
	graphite-gtk-theme-black-rimless-git #gtk theme must
	battop #battery stats 
	waypaper	#wallpaper selector
	multitail
	python-pywal16-git #pywal 
	sc-im #spreedsheet vim based 
	librewolf-bin #fork firefox browser focuses majorly on privacy.
)


while true;do

if [ -f /usr/bin/paru ]; then 
	break 
else 
	gum confirm " :: Do u wanna install the paru aur helper? (y/n): " && aur="yes" || aur="no"

	case "$aur" in
		[yes]*)
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
		break
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

