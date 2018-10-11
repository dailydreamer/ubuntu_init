#!/bin/bash

sudo apt-get install -y privoxy
sudo sh -c "echo 'forward-socks5 / 127.0.0.1:1080 .' >> /etc/privoxy/config"
echo "alias ss=\"export https_proxy='http://localhost:8118';
export http_proxy='http://localhost:8118';\"" >> ~/.zshrc
sudo systemctl restart privoxy