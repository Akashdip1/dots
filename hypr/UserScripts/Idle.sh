#!/bin/bash

swayidle -w \
timeout 180 'swaylock -f' \
timeout 500 'hyprctl dispatch dpms off' resume 'hyprctl dispatch dpms on' \
timeout 1500 'systemctl suspend' \
