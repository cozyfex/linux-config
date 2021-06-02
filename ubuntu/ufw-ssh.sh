echo "Default outgoing and incoming"
ufw default allow outgoing
ufw default deny incoming

echo "Allow ssh"
ufw allow ssh

echo "Enable ufw"
ufw enable

echo "ufw status"
ufw status
