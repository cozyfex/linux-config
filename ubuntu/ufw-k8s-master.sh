echo "Kubernetes API server 6443*"
sudo ufw allow 6443/tcp comment 'Kubernetes API Server'

echo "etcd server client API 2379:2380"
sudo ufw allow 2379:2380/tcp comment 'ETCD Server Clint API'

echo "kubelet API 10250"
sudo ufw allow 10250/tcp comment 'kubelet API'

echo "kube-scheduler 10251"
sudo ufw allow 10251/tcp comment 'kube-scheduler'

echo "kube-controller-manager 10252"
sudo ufw allow 10252/tcp comment 'kube-controller-manager'

sudo ufw status verbose
