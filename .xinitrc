#!/bin/sh
#
# ~/.xinitrc
#
# Executed by startx

if [ -f $HOME/.config/.Xresources ]; then
	xrdb -merge $HOME/.config/.Xresources
fi

systemctl --user import-environment DISPLAY XAUTHORITY
dbus-update-activation-environment --systemd DBUS_SESSION_BUS_ADDRESS DISPLAY XAUTHORITY

nvidiapower
clean
scrollwheel
numlockx &
sxhkd &
dwmblocks &
nvidia-settings -l --config=~/.config/nvidia/settings/.nvidia-settings-rc &
dunst -conf ~/.config/dunst/dunstrc &
picom -b --config ~/.config/picom.conf &
nitrogen --restore &
playerctld daemon &
exec dwm
