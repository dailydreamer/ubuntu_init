#!/bin/bash

# add numix, shadowsocks-qt5 repo
sudo add-apt-repository -y ppa:numix/ppa
sudo add-apt-repository -y ppa:hzwhuang/ss-qt5
sudo apt-get update

sudo apt-get install -y chromium-browser \
numix-gtk-theme numix-icon-theme-circle unity-tweak-tool \
git vim curl privoxy shadowsocks-qt5

# git
git config --global user.name "dailydreamer"
git config --global user.email lixc12@outlook.com
ssh-keygen -t rsa -b 4096 -C "lixc12@outlook.com" -q -N "" -f ~/.ssh/id_rsa

# privoxy
# sudo sh -c "echo 'forward-socks5 / 127.0.0.1:1080 .' >> /etc/privoxy/config"
# echo "alias ss=\"export https_proxy='http://localhost:8118';
# export http_proxy='http://localhost:8118';\"" >> ~/.zshrc
# sudo systemctl restart privoxy

# mpv
sudo apt-get install -y mpv
mkdir -p ~/.config/mpv
echo  '#intel HD4000 above open opengl decode
vo=opengl-hq:icc-profile-auto
#adjust 24hz video fits 60hz display
vo=opengl-hq:interpolation:icc-profile-auto
#always save the current playback position on quit
save-position-on-quit=yes
#for network play
cache=8192
#choose the default subtitle to chinese
slang=zh,chi
#auto subtitle can fuzzy match
sub-auto=fuzzy
#for GB2312 GBK BIG5 charset, use enca convert them to utf8
sub-codepage=enca:zh:utf8'  >  ~/.config/mpv/mpv.conf

# sogou pinyin
wget -O ~/Downloads/sogoupinyin.deb http://pinyin.sogou.com/linux/download.php\?f\=linux\&bit\=64
sudo dpkg -i ~/Downloads/sogoupinyin.deb
sudo apt-get -f install -y
sudo apt-get remove -y fcitx-ui-qimpanel

# vscode
wget -O ~/Downloads/code.deb https://vscode-update.azurewebsites.net/latest/linux-deb-x64/stable
sudo dpkg -i ~/Downloads/code.deb
sudo apt-get -f install -y
code --install-extension azemoh.theme-onedark
mkdir -p ~/.config/Code/User/
echo  '{
  "editor.fontSize": 18,
  "workbench.colorTheme": "One Dark Theme",
  "window.zoomLevel": 1.2,
}'  >  ~/.config/Code/User/settings.json

# miniconda
wget -O ~/Downloads/miniconda.sh --quiet http://repo.continuum.io/miniconda/Miniconda-latest-Linux-x86_64.sh
bash ~/Downloads/miniconda.sh -b -p ~/miniconda3/
echo 'export PATH=/home/dailydreamer/miniconda3/bin:$PATH' >> ~/.zshrc

# docker
. scripts/docker.sh

echo  '*********************************************************************'
echo  'Change Tweak Tools -> Apperance -> Theme and Icons to numix circle'
echo  'Change Language Support -> input method to fcitx'
echo  'Sogou pinyin and fcitx'
echo  'Startup application firefox + ss-qt5'
echo  'Github and Gitlab rsa key'
echo  'Config Shadowsocks manually'
echo  '*********************************************************************'
