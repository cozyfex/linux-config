HOSTNAME="master01"
IP="10.0.2.10/24"
GATEWAY="10.0.2.2"
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

./hostname.sh -h ${HOSTNAME}
./ip.sh -i ${IP} -g ${GATEWAY} -e ${ETHERNET_NAME}
