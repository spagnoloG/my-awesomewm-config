#!/bin/bash
# Diffrent monitor configurations

function run {
    if ! pgrep $1 ; then
        $@&
    fi
}

# 3 displays using usb type c
dp() {
	xrandr --output eDP-1 --primary --mode 1920x1080 --pos 0x229 --rotate normal --output DP-1 --off --output HDMI-1 --off --output HDMI-2 --off --output DP-1-8 --mode 1920x1080 --pos 1920x0 --rotate normal --output DP-1-1 --off --output DP-1-1-8 --mode 1920x1080 --pos 3840x0 --rotate normal --output DP-1-1-1 --off
}

lj() {
  xrandr --output DP1-1-8 --mode 1920x1080 --rotate normal --rate 59.59 
  xrandr --output eDP1 --off --output DP1 --off --output DP1-1 --off --output DP1-1-1 --off --output DP1-1-8 --mode 1920x1080 --pos 0x0 --rotate normal --output DP1-8 --mode 1920x1080 --pos 1920x0 --rotate normal --output HDMI1 --off --output HDMI2 --off --output VIRTUAL1 --off
}

# single display
laptop() {
    xrandr --auto
}

# left side laptop, right side monitor via usb-c port
homeL () {
  xrandr --output eDP1 --primary --mode 1920x1080 --pos 0x0 --rotate normal --output DP1 --off --output DP1-1 --off --output DP1-8 --mode 1920x1080 --pos 1920x0 --rotate normal --output HDMI1 --off --output HDMI2 --off --output VIRTUAL1 --off
}

# right side laptop, left side monitor via usb-c port
homeR () {
  xrandr --output eDP1 --primary --mode 1920x1080 --pos 1920x0 --rotate normal --output DP1 --off --output DP1-1 --off --output DP1-8 --mode 1920x1080 --pos 0x0 --rotate normal --output HDMI1 --off --output HDMI2 --off --output VIRTUAL1 --of
}

# VM development mode
vm () {
    xrandr -s 1600x900
}

# Function call
$1
