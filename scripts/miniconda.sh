#!/bin/bash

wget -O ~/Downloads/miniconda.sh --quiet http://repo.continuum.io/miniconda/Miniconda-latest-Linux-x86_64.sh
bash ~/Downloads/miniconda.sh -b -p ~/miniconda3/
echo 'export PATH=/home/dailydreamer/miniconda3/bin:$PATH' >> ~/.zshrc