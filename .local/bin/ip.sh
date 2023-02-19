#!/bin/sh
# Shows info about network interfaces

dev=wlan0
state=$(ip link show dev wlan0 | cut -d ' ' -f3 | grep UP)
wlan0_ip=$(ip address show wlan0 | grep inet | awk '{print $2}')
printf "Device:%s $dev\n"
printf "State:%s $state\n"
printf "Local ip:%s $wlan0_ip\n"
