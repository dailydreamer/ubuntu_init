#!/bin/bash

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