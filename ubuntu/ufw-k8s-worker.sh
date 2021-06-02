echo "kubelet API 10250"
sudo ufw allow 10250/tcp

echo "NodePort Services 30000-32767"
sudo ufw allow 30000:32767/tcp

sudo ufw status verbose
