echo "CNI Service 6783:6784"
sudo ufw allow 6783:6784/tcp comment 'CNI'

sudo ufw status verbose
