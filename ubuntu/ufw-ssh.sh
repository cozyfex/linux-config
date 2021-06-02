echo "Default outgoing and incoming"
ufw allow default outgoing
ufw deny default incoming

echo "Allow ssh"
ufw allow ssh

echo "Enable ufw"
ufw enable

echo "ufw status"
ufw status
