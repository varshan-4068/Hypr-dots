
while true; do

echo 
echo 

read -p " :: Do you wanna Install ani-cli? (y/n): " ani

case "$ani" in

[y]*)
	echo 
	echo " :: Setting Up ani-cli ::"

	git clone https://github.com/pystardust/ani-cli.git
	sudo cp -r ani-cli/ani-cli /usr/local/bin
	sudo rm -rf ani-cli
	break 
	;;
[n]*)
	break 
	;;
*)
	echo 
	echo
	echo ":: Please answer yes(y) or no(n) ::"
esac

done
