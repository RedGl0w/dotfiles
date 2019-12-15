#!/bin/sh

# Terminate already running bar instances
killall -q polybar

# Launch bar1 and bar2
polybar top &
polybar bottom;
