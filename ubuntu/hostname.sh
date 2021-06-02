HOSTNAME="master01"

while getopts "h:" opt; do
  case "$opt" in
  h) HOSTNAME="$OPTARG" ;;
  ?) helpFunction ;; # Print helpFunction in case parameter is non-existent
  esac
done

echo "Change Hostname"
hostnamectl set-hostname ${HOSTNAME}

echo "================================================"
hostnamectl
echo "================================================"
ip addr show ${ETHERNET_NAME}
echo "================================================"
