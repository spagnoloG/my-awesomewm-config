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

manipulate_display_brightness(){	
	brightnessctl s $1
}


# First parameter is binded function
# Second parameter is factor
$1 $2
