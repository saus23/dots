#!/bin/sh
#
# ~/.xinitrc
#
# Executed by startx

if [ -f $HOME/.config/.Xresources ]; then
	xrdb -merge $HOME/.config/.Xresources
fi

dbus-update-activation-environment --systemd DBUS_SESSION_BUS_ADDRESS DISPLAY XAUTHORITY

nvidiapower
autoDPMS >/dev/null &
numlockx &
dwmblocks &
xss-lock cleansus &
redshift -c ~/.config/redshift.conf &
nvidia-settings -l --config=~/.config/nvidia/settings/.nvidia-settings-rc &
dunst -conf ~/.config/dunst/dunstrc &
picom --realtime --config ~/.config/picom.conf &
nitrogen --head=1 --restore &
playerctld daemon &
xpointerbarrier 0 0 0 0 &
xdotool mousemove 5800 1080 &
xbindkeys -f ~/.config/xbindkeys.rc
exec dwm
