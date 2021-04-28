#!/bin/bash

change_volume() {
	pulsemixer --change-volume $1
}

mute() {
	pulsemixer --mute
}

unmute() {
	pulsemixer --unmute
}

lower_brightness() {
	current_brightness=$(brightnessctl -q -d intel_backlight g)
	if [ $current_brightness < 961 ]; then
		brightnessctl -q -d intel_backlight s 5%-
	else
		brightnessctl -q -d intel_backlight s 5%-
	fi
}

higher_brightness() {	
	brightnessctl -q -d intel_backlight s +5%
}

# First parameter is binded function
# Second parameter is factor
$1 $2
