#!/bin/bash

# ~/mnt is as CD-Rom in winecfg
# diablo1.iso is soft link to diablo.iso (create diablo.iso file in Brasero)
sudo mount diablo1.iso ~/mnt

cd ~/.wine/drive_c/Diablo
xrandr --output HDMI-0 --mode 800x600 --output VGA-0 --mode 1440x900 --below HDMI-0
setxkbmap us
wine diablo.exe
setxkbmap cz
xrandr --output HDMI-0 --mode 1920x1080 --output VGA-0 --mode 1440x900 --below HDMI-0

sudo umount ~/mnt

