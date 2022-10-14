if [ "$EUID" -ne 0 ]
then
echo "run with sudo"
exit
fi
echo -e "setting up"
chmod u+x tor_chat.sh
cd ..
cp -r TorChat /etc/


cd TorChat
sudo ln -s /etc/TorChat/tor_chat.sh /usr/local/bin/tor_chat
sudo ln -s /etc/TorChat/tor_chat.sh /usr/bin/tor_chat

