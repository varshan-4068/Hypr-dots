
while true;do

echo 

echo

read -p " :: Do u wanna install auto-cpufreq for power saving? (y/n): " cpu 

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

done
