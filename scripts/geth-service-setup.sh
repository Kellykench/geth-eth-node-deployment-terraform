#!/bin/bash

cat <<EOF | sudo tee /etc/systemd/system/geth.service
[Unit]
Description=Geth Ethereum Node
After=network.target

[Service]
User=ubuntu
ExecStart=/usr/bin/geth --syncmode "fast" --http --http.addr "0.0.0.0" --http.port 8545 --http.api "eth,net,web3"
Restart=always

[Install]
WantedBy=multi-user.target
EOF

sudo systemctl daemon-reexec
sudo systemctl enable geth
sudo systemctl start geth