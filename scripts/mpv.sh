#!/bin/bash

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