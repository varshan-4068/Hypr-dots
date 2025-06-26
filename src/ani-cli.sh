#!/usr/bin/env bash

while true; do

gum confirm " :: Do you wanna Install ani-cli? (y/n): " && ani="yes" || ani="no"

case "$ani" in

[yes]*)
	echo 
	echo " :: Setting Up ani-cli ::"
	git clone https://github.com/pystardust/ani-cli.git
	sudo cp -r ani-cli/ani-cli /usr/local/bin
	sudo rm -rf ani-cli
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
esac

done
