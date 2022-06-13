#!/bin/bash

#st_prev=$(cat /sys/class/drm/card0-HDMI-A-1/status)
st_prev="disconnected"

while :
do
    st_next=$(cat /sys/class/drm/card0-HDMI-A-1/status)
    if [ $st_prev != $st_next ]; then
        st_prev=$st_next
        if [ $st_next = "connected" ]; then
            #xrandr --output eDP1 --mode 1600x900 --output HDMI1 --auto --above eDP1
	    /home/kd/.screenlayout/hiratuka.sh
        else
            xrandr --output eDP1 --mode 1920x1080 --output HDMI1 --off
	    #/home/kd/.screenlayout/screen1.sh
        fi
        ~/.fehbg
    fi
    sleep 1
done
