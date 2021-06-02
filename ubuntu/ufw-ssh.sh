echo "Default outgoing and incoming"
sudo ufw default allow outgoing
sudo ufw default deny incoming

echo "Allow ssh"
sudo ufw allow ssh

echo "Enable ufw"
sudo ufw enable

echo "ufw status"
sudo ufw status
