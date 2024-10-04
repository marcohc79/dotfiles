#!/usr/bin/bash

grim - | wl-copy -t image/png || exit
notify-send "Screenshot copied to clipboard"
