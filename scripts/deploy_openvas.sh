#!/bin/bash
set -o errexit
set -o pipefail
set -o nounset
set -o xtrace
# set -eox pipefail #safety for script

echo "=========================  updating ==========================================================="
echo "==============================================================================================="
apt-get update -y

echo "=========================  upgrading ==========================================================="
echo "==============================================================================================="
apt-get upgrade -y 

echo "=========================  installing gvm ==========================================================="
echo "==============================================================================================="
apt-get install -yq gvm*
# run the setup program
gvm-setup
# Start OpenVAS, browse the local host “127.0.0.1”
gvm-start
echo "===================================================================================="
