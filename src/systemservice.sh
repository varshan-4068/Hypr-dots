#!/usr/bin/bash 

set -e 

echo 
echo

while true;do

read -rp " :: Do you Wanna enable Network services? (y/n): " service 

case "$service" in 
	[y]*)
		echo 
		systemctl enable NetworkManager.service
		echo 
		systemctl enable NetworkManager-wait-online.service 
		echo 
		break 
		;;
	[n]*)
		break 
		;;
	*)
		echo 
		echo 
		echo " :: Type either y(yes) or n(no) ::"
esac 

done

echo 
echo 

while true;do

read -rp " :: Do you wanna enable Bluetooth services? (y/n): " Bluetooth

case "$Bluetooth" in
  [y]*)
		echo 
		systemctl enable bluetooth.service 
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
