
paru=(
	hyprshot
	timeshift-autosnap
	battop
	waypaper
	multitail
	python-pywal16
)


while true;do

echo 
echo 

read -p " :: Do u wanna install the paru aur helper? (y/n): " aur

case "$aur" in
	[y*])
		echo " :: Installing paru ( AUR helper ) ::"
		git clone https://aur.archlinux.org/paru.git
		cd paru/
		makepkg -si 
		sudo rm -r ~/paru/
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
		;;

esac

done

while true;do

echo 

echo

read -p " :: Do u wanna install some aur packages? (y/n): " depen

case "$depen" in
	[y]*)
		echo " :: Installing aur packages ::"

		paru -S "${paru[@]}" --noconfirm --needed
		break
		;;

	[n]*)
		break
		;;

	 *)
		echo 
		echo
		echo ":: Please answer yes(y) or no(n) ::"
		;;
esac

done

