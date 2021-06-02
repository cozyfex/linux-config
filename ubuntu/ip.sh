while getopts "i:g:e:" opt; do
  case "$opt" in
  i) IP="$OPTARG" ;;
  g) GATEWAY="$OPTARG" ;;
  e) ETHERNET_NAME="$OPTARG" ;;
  ?) helpFunction ;; # Print helpFunction in case parameter is non-existent
  esac
done

echo "Change IP Configuration"
sudo cat <<EOT >/etc/netplan/00-installer-config.yaml
network:
  version: 2
  renderer: networkd
  ethernets:
    ${ETHERNET_NAME}:
      dhcp4: no
      addresses:
        - ${IP}
      gateway4: ${GATEWAY}
      nameservers:
        addresses: [ 8.8.8.8, 1.1.1.1 ]
EOT

echo "Change IP Apply"
sudo netplan apply

echo "================================================"
ip addr show ${ETHERNET_NAME}
echo "================================================"
