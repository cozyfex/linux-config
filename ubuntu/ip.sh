IP="192.168.56.10/24"
GATEWAY="192.168.56.1"
ETHERNET_NAME="enp0s3"

while getopts "i:g:e:" opt; do
  case "$opt" in
  i) IP="$OPTARG" ;;
  g) GATEWAY="$OPTARG" ;;
  e) ETHERNET_NAME="$OPTARG" ;;
  ?) helpFunction ;; # Print helpFunction in case parameter is non-existent
  esac
done

echo "Change IP Configuration"
cat <<EOT >/etc/netplan/00-installer-config.yaml
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
netplan apply
HOSTNAME="master01"
IP="192.168.56.10/24"
GATEWAY="192.168.56.1"
ETHERNET_NAME="enp0s3"

while getopts "h:i:g:e:" opt; do
  case "$opt" in
  h) HOSTNAME="$OPTARG" ;;
  i) IP="$OPTARG" ;;
  g) GATEWAY="$OPTARG" ;;
  e) ETHERNET_NAME="$OPTARG" ;;
  ?) helpFunction ;; # Print helpFunction in case parameter is non-existent
  esac
done

echo "Change Hostname"
hostnamectl set-hostname ${HOSTNAME}

echo "================================================"
ip addr show ${ETHERNET_NAME}
echo "================================================"
