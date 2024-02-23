#!/bin/bash
main_wallpapers=$HOME/Pictures/wallpapers/main
virtical_wallpapers=$HOME/Pictures/wallpapers/virtical

function get_random_img() {
	dir=$1
	img=$(find $dir | tail -n +2 | shuf | head -n 1)
	echo $img
}

function set_wallpaper() {
	monitor=$1
	dir=$2
	wallpaper=$(get_random_img $dir)
	swww img $wallpaper -o $monitor
}

# Edit below to control the images transition
export SWWW_TRANSITION_FPS=60
export SWWW_TRANSITION_STEP=2
export SWWW_TRANSITION=center

# This controls (in seconds) when to switch to the next image
INTERVAL=3600

# if swww.sh is running, kill the old process, 
# kill $(ps -ef | grep swww.sh | tr -s ' ' | head -n -1 | cut -d ' ' -f 2)

pgrep swww || swww init --no-cache


while true; do
	set_wallpaper "DP-1" $main_wallpapers
	set_wallpaper "DP-2" $virtical_wallpapers
	set_wallpaper "DP-3" $virtical_wallpapers
	sleep $INTERVAL
done
