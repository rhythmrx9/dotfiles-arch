#!/usr/bin/bash

killall -9 xwinwrap
killall -9 mpv

wallpaper=$(ls /home/rhythmrx9/.backgrounds/live/ | shuf -n 1)
xwinwrap -g 1920x1080 -un -fdt -ni -b -nf -ov -- /home/rhythmrx9/.scripts/live.sh WID /home/rhythmrx9/.backgrounds/live/$wallpaper &
