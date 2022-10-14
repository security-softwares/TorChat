#!/bin/bash
if [ -z "$1" ]
then
echo -e "\033[1;32m Tor_Chat is encrypted chat over Tor service \n for more visit :\033[0m https://github.com/security-softwares"
echo -e "\033[1;33musage: 	sudo tor_chat -s : For server side \n	sudo tor_chat -c : For client side \033[0m"
exit
fi

if [ "$EUID" -ne 0 ]
then
echo "run with sudo"
exit
elif [ "$1" == "-s" ]

then
service start tor
read -p "enter port " port
echo -e "HiddenServiceDir /var/lib/tor/hidden_service/ \n HiddenServicePort 80 127.0.0.1:$port" >> /etc/tor/torrc
echo "link to join-;"
cat /var/lib/tor/hidden_service/hostname
echo -e "server should be host on port 8080 and join port 80\n"
torsocks python3 /etc/TorChat/chat_server.py

elif [ "$1" == "-c" ]
then 
torsocks python3 /etc/TorChat/chat_client.py
else
echo "\033[1;31mERROR"
exit
fi
