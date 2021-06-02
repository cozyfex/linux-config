echo "Kubernetes API server 6443*"
sudo ufw allow 6443/tcp

echo "etcd server client API 2379-2380"
sudo ufw allow 2379:2380/tcp

echo "kubelet API 10250"
sudo ufw allow 10250/tcp

echo "kube-scheduler 10251"
sudo ufw allow 10251/tcp

echo "kube-controller-manager 10252"
sudo ufw allow 10252/tcp

sudo ufw status verbose
