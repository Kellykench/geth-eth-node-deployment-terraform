#!/bin/bash
sudo apt update && sudo apt install -y software-properties-common
sudo add-apt-repository -y ppa:ethereum/ethereum
sudo apt update && sudo apt install -y ethereum
bash /home/ubuntu/geth-service-setup.sh