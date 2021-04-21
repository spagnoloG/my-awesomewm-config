#!/usr/bin/env bash

function run {
    if ! pgrep $1 ; then
        $@&
    fi
}


xrandr --output eDP-1 --primary --mode 1920x1080 --pos 0x0 --rotate normal --output DP-1 --off --output HDMI-1 --off --output HDMI-2 --off --output DP-1-8 --mode 1920x1080 --pos 1920x0 --rotate normal --output DP-1-1 --off --output DP-1-1-8 --mode 1920x1080 --pos 3840x0 --rotate normal --output DP-1-1-1 --off
