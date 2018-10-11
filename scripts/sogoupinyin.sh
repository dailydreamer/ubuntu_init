#!/bin/bash

wget -O ~/Downloads/sogoupinyin.deb http://pinyin.sogou.com/linux/download.php\?f\=linux\&bit\=64
sudo dpkg -i ~/Downloads/sogoupinyin.deb
sudo apt-get -f install -y
# solve multi panel in system menu
sudo apt-get remove -y fcitx-ui-qimpanel
# solve encode error when enter Chinese
rm -r ~/.config/Sogou*