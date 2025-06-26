#!/usr/bin/env bash

firewall(){

	gum style \
		--align center \
		--bold \
'
											 __ __  _____  __    __ 
											|  |  ||     ||  |__|  |
											|  |  ||   __||  |  |  |
											|  |  ||  |_  |  |  |  |
											|  :  ||   _] |  `  `  |
											|     ||  |    \      / 
											 \____||__|     \_/\_/  

'
}

clear
firewall

echo
sudo ufw enable
sudo ufw status
echo 
echo "_________________________________________________________________________________________________________"
echo 
sudo ufw limit 22/tcp  
sudo ufw allow 80/tcp  
sudo ufw allow 443/tcp  
echo 
echo "_________________________________________________________________________________________________________"
echo 
sudo ufw default deny incoming  
sudo ufw default allow outgoing

echo 

echo " :: UFW rules were successfully updated in your system ::"

sleep 1.4
clear 

