#!/bin/bash

while true; do

    bat_lvl=$(cat /sys/class/power_supply/BAT0/capacity)
    bat_state=$(cat /sys/class/power_supply/BAT0/status)

    if [ $bat_lvl -le 20 ] && [ $bat_lvl -ge 6 ]; then
        notify-send --urgency=CRITICAL "Battery Low" "Level: ${bat_lvl}%"
        sleep 1200
    elif [ $bat_lvl -le 5 ]; then
        notify-send --urgency=CRITICAL "Batery Level Critical, Hibernating"
        sleep 5
        systemctl hibernate
    elif [ $bat_lvl -ge 79 ]; then
        notify-send --urgency=NORMAL "Battery Full" "Level: ${bat_lvl}%"
        sleep 1200
    elif [ $bat_state == "Charging" ]; then
        notify-send --urgency=LOW "Charging" "Level: ${bat_lvl}%"
        sleep 1200
    elif [ $bat_state == "Discharging" ]; then
        notify-send --urgency=LOW "Discharging" "Level: ${bat_lvl}%"
        sleep 1200

    else
        sleep 120
    fi

done
