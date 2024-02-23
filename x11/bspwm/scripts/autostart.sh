#!/bin/bash
#
export SCP="$HOME/.config/bspwm/scripts"

pgrep -x polybar || polybar &

~/.config/bspwm/scripts/xrandr.sh

pgrep wallpaper.sh && killall wallpaper.sh

$SCP/wallpaper.sh "30m" &

pgrep -x fcitx5 || fcitx5 -d &


pgrep -x picom || picom --config ~/.config/picom/picom.conf &

pgrep -x dunst || dunst &

pgrep -x nm-applet || nm-applet &

$SCP/poems.sh
