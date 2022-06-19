#!/bin/bash

#st_prev=$(cat /sys/class/drm/card0-HDMI-A-1/status)
st_prev="disconnected"

while :
do
    st_next=$(cat /sys/class/drm/card0-HDMI-A-1/status)
    if [ $st_prev != $st_next ]; then
        st_prev=$st_next
        if [ $st_next = "connected" ]; then
        
	     xrandr --output eDP1 --off  --output HDMI1 --primary --mode 2560x1440 --pos 0x0 --rotate normal --output VIRTUAL1 --off

	else
            xrandr --output eDP1 --mode 1920x1080 --output HDMI1 --off
	    #/home/kd/.screenlayout/screen1.sh
        fi
        ~/.fehbg
    fi
    sleep 1
done
