#!/usr/bin/bash

bright=$(xrandr --verbose | grep Brightness | cut -f 2 -d " ")

value=$(echo $bright + $1 | bc)
gr=$(echo 1 - $value | bc | cut -c 1)
le=$(echo $value | cut -c 1)

if [[ $le != "-" && $gr != "-" ]]
then 
	xrandr --output eDP-1 --brightness $value
fi

