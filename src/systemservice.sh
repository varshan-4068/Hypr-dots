#!/usr/bin/bash 

set -e 

while true;do

gum confirm " :: Do you Wanna enable Network services? (y/n): " && service="yes" || service="no"

case "$service" in 
	[yes]*)
		echo 
		systemctl enable NetworkManager.service
		echo 
		systemctl enable NetworkManager-wait-online.service 
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
esac 

done

while true;do

gum confirm " :: Do you wanna enable Bluetooth services? (y/n): " && Bluetooth="yes" || Bluetooth="no"

case "$Bluetooth" in
  [yes]*)
		echo 
		systemctl enable bluetooth.service 
		systemctl start bluetooth.service 
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

while true;do

	gum confirm " :: Do you wanna enable libvirt (for qemu) services? (y/n): " && qemu="yes" || qemu="no"

case "$qemu" in
  [yes]*)
		echo 
		systemctl enable libvirtd 
		systemctl start libvirtd 
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
