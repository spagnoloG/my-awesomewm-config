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
# single display
laptop() {
    xrandr --auto
}

# left side laptop, right side monitor via HDMI port
homeL () {
    xrandr --output eDP-1 --left-of HDMI-2 
}
# right side laptop, left side monitor via HDMI port
homeR () {
    xrandr --output eDP-1 --right-of HDMI-2 
}

# VM development mode
vm () {
    xrandr -s 1600x900
}

# Function call
$1
