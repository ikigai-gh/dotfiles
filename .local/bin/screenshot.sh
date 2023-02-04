#!/bin/sh

# Creates a screenshot

# ISO date with unix timestamp to avoid overwriting
SCROT_NAME_FORMAT="screen-%Y-%m-%d-%s.png"
SCROT_PATH="/tmp/$SCROT_NAME_FORMAT"
SCROT_INTERACTIVE="$1"

scrot "$SCROT_INTERACTIVE" -F "$SCROT_PATH" && notify-send "Scrot" "Screenshot has been saved to $SCROT_PATH" ||
notify-send "Oops"
