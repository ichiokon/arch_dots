#!/bin/bash
# Toggle brightness of laptop (none/full)

# if we don't have a file, start at zero
if [ ! -f "/tmp/monitor_brightness.dat" ] ; then
  monitor_bright="on"

# otherwise read the value from the file
else
  monitor_bright=`cat /tmp/monitor_brightness.dat`
fi

if [ $monitor_bright = "on" ]; then
        monitor_bright="off"
        xrandr --output eDP --brightness 0
        brightnessctl s 0%
else
        monitor_bright="on"
        xrandr --output eDP --brightness 1
        brightnessctl s 10%
fi
echo "${monitor_bright}" > /tmp/monitor_brightness.dat#!/bin/bash
# Toggle brightness of laptop (none/full)

# if we don't have a file, start at zero
if [ ! -f "/tmp/monitor_brightness.dat" ] ; then
  monitor_bright="on"

# otherwise read the value from the file
else
  monitor_bright=`cat /tmp/monitor_brightness.dat`
fi

if [ $monitor_bright = "on" ]; then
        monitor_bright="off"
        xrandr --output eDP --brightness 0
        brightnessctl s 0%
else
        monitor_bright="on"
        xrandr --output eDP --brightness 1
        brightnessctl s 10%
fi
echo "${monitor_bright}" > /tmp/monitor_brightness.dat#!/bin/bash
# Toggle brightness of laptop (none/full)

# if we don't have a file, start at zero
if [ ! -f "/tmp/monitor_brightness.dat" ] ; then
  monitor_bright="on"

# otherwise read the value from the file
else
  monitor_bright=`cat /tmp/monitor_brightness.dat`
fi

if [ $monitor_bright = "on" ]; then
        monitor_bright="off"
        xrandr --output eDP --brightness 0
        brightnessctl s 0%
else
        monitor_bright="on"
        xrandr --output eDP --brightness 1
        brightnessctl s 10%
fi
echo "${monitor_bright}" > /tmp/monitor_brightness.dat#!/bin/bash
# Toggle brightness of laptop (none/full)

# if we don't have a file, start at zero
if [ ! -f "/tmp/monitor_brightness.dat" ] ; then
  monitor_bright="on"

# otherwise read the value from the file
else
  monitor_bright=`cat /tmp/monitor_brightness.dat`
fi

if [ $monitor_bright = "on" ]; then
        monitor_bright="off"
        xrandr --output eDP --brightness 0
        brightnessctl s 0%
else
        monitor_bright="on"
        xrandr --output eDP --brightness 1
        brightnessctl s 10%
fi
echo "${monitor_bright}" > /tmp/monitor_brightness.dat#!/bin/bash
# Toggle brightness of laptop (none/full)

# if we don't have a file, start at zero
if [ ! -f "/tmp/monitor_brightness.dat" ] ; then
  monitor_bright="on"

# otherwise read the value from the file
else
  monitor_bright=`cat /tmp/monitor_brightness.dat`
fi

if [ $monitor_bright = "on" ]; then
        monitor_bright="off"
        xrandr --output eDP --brightness 0
        brightnessctl s 0%
else
        monitor_bright="on"
        xrandr --output eDP --brightness 1
        brightnessctl s 10%
fi
echo "${monitor_bright}" > /tmp/monitor_brightness.dat#!/bin/bash
# Toggle brightness of laptop (none/full)

# if we don't have a file, start at zero
if [ ! -f "/tmp/monitor_brightness.dat" ] ; then
  monitor_bright="on"

# otherwise read the value from the file
else
  monitor_bright=`cat /tmp/monitor_brightness.dat`
fi

if [ $monitor_bright = "on" ]; then
        monitor_bright="off"
        xrandr --output eDP --brightness 0
        brightnessctl s 0%
else
        monitor_bright="on"
        xrandr --output eDP --brightness 1
        brightnessctl s 10%
fi
echo "${monitor_bright}" > /tmp/monitor_brightness.dat#!/bin/bash
# Toggle brightness of laptop (none/full)

# if we don't have a file, start at zero
if [ ! -f "/tmp/monitor_brightness.dat" ] ; then
  monitor_bright="on"

# otherwise read the value from the file
else
  monitor_bright=`cat /tmp/monitor_brightness.dat`
fi

if [ $monitor_bright = "on" ]; then
        monitor_bright="off"
        xrandr --output eDP --brightness 0
        brightnessctl s 0%
else
        monitor_bright="on"
        xrandr --output eDP --brightness 1
        brightnessctl s 10%
fi
echo "${monitor_bright}" > /tmp/monitor_brightness.dat
