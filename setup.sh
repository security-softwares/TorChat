
echo -e "setting up"
chmod +x tor_chat.sh
cd ..
cp -r TorChat /etc/


cd TorChat
sudo ln -s /etc/TorChat/tor_chat.sh /usr/local/bin/tor_chat
sudo ln -s /etc/TorChat/tor_chat.sh /usr/bin/tor_chat
#sudo cp tor_chat.sh /usr/bin
#sudo chmod 744 /usr/local/bin/tor_chat
