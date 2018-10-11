#!/bin/bash

# add numix, shadowsocks-qt5 repo
sudo add-apt-repository -y ppa:numix/ppa
sudo add-apt-repository -y ppa:hzwhuang/ss-qt5
sudo apt-get update

sudo apt-get install -y chromium-browser \
numix-gtk-theme numix-icon-theme-circle unity-tweak-tool \
git vim curl shadowsocks-qt5

# git
git config --global user.name "dailydreamer"
git config --global user.email lixc12@outlook.com
ssh-keygen -t rsa -b 4096 -C "lixc12@outlook.com" -q -N "" -f ~/.ssh/id_rsa

# . scripts/privoxy.sh
. scripts/mpv.sh
. scripts/sogoupinyin.sh
. scripts/vscode.sh
. scripts/miniconda.sh
. scripts/sync_time.sh
. scripts/docker.sh
. scripts/mysql.sh

echo  '*********************************************************************'
echo  'Change Tweak Tools -> Apperance -> Theme and Icons to numix circle'
echo  'Change Language Support -> input method to fcitx'
echo  'Sogou pinyin and fcitx'
echo  'Startup application firefox + ss-qt5'
echo  'Github and Gitlab rsa key'
echo  'Config Shadowsocks manually'
echo  '*********************************************************************'
