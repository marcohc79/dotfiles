#!/usr/bin/bash

# grimblast copy area || exit
grim -g "$(slurp)" - | wl-copy -t image/png || exit
notify-send "Screenshot copied to clipboard"
