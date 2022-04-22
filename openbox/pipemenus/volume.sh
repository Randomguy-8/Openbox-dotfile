#! /bin/bash

# By Randomguy
# https://github.com/Randomguy-8

Volume=$(amixer sget Master | awk '/%/ {gsub(/[\[\]%]/,""); print $4}')
echo "<openbox_pipe_menu>"
echo "<item label=\"Volume: "$Volume"%\"></item>"
echo "</openbox_pipe_menu>"

