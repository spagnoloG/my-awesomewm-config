#!/usr/bin/env bash

function run {
    if ! pgrep $1 ; then
        $@&
    fi
}


xrandr --output DP-1-8 --left-of DP-2-8
