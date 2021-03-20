#!/usr/bin/env bash

function run {
    if ! pgrep $1 ; then
        $@&
    fi
}


xrandr --output eDP-1