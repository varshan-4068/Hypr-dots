#!/usr/bin/env bash

while true;do

	if [ -f /usr/local/bin/auto-cpufreq ]; then 
		break 
	else
		echo 

		echo

		read -rp " :: Do u wanna install auto-cpufreq for power saving? (y/n): " cpu 

		case "$cpu" in 
			y*)
				git clone https://github.com/AdnanHodzic/auto-cpufreq.git
				cd auto-cpufreq &&  sudo ./auto-cpufreq-installer
				sudo auto-cpufreq --install
				break
				;;
			n*)
				break
				;;
			*)
				echo 
				echo 
				echo ":: Please answer yes(y) or no(n) :: "
				;;
		esac
	fi
done
