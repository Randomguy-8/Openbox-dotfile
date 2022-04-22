#! /bin/bash


# By Randomguy
# https://github.com/Randomguy-8

Battery=$(cat /sys/class/power_supply/BAT0/capacity)
Status=$(cat /sys/class/power_supply/BAT0/status)
echo "<openbox_pipe_menu>"
echo "<item label=\"Battery level: "$Battery"%\"></item>"
echo "<item label=\"Status: "$Status"\"></item>"
echo "</openbox_pipe_menu>"