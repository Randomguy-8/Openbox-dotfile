#! /bin/bash

# By Randomguy
# https://github.com/Randomguy-8

echo 9699 | sudo -S -k chmod 777 /sys/class/backlight/intel_backlight/brightness
default_brightness=$(cat /sys/class/backlight/intel_backlight/brightness)
default_brightness=$(printf %.0f\\n "$((100 *   $default_brightness/7500 * 100  ))e-2")
echo "<openbox_pipe_menu>"
echo "<item label=\"Brightness: "$default_brightness"%\"></item>"
echo "</openbox_pipe_menu>"