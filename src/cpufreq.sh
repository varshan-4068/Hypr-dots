#!/usr/bin/env bash

while true;do

	if [ -f /usr/local/bin/auto-cpufreq ]; then 
		break 
	else
		gum confirm " :: Do u wanna install auto-cpufreq for power saving? (y/n): "  && cpu="yes" || cpu="no"

		case "$cpu" in 
			[yes]*)
				git clone https://github.com/AdnanHodzic/auto-cpufreq.git
				cd auto-cpufreq &&  sudo ./auto-cpufreq-installer
				sudo auto-cpufreq --install
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
				echo ":: Please answer yes(y) or no(n) :: "
				;;
		esac
	fi
done
