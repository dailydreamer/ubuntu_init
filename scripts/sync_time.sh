#!/bin/bash

# sync time between Ubuntu 16.04 and Windows 10
sudo apt-get install -y ntpdate
sudo ntpdate time.windows.com
sudo hwclock --localtime --systohc