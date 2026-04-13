#!/bin/bash

STATE_FILE="$HOME/.config/hypr/.opacity"

if [ ! -f "$STATE_FILE" ]; then
	echo 0 > "$STATE_FILE"
	echo $STATE_FILE was created
fi

current=$(cat "$STATE_FILE")

if [ "$current" -eq 1 ]; then
	new=0
	opacity=1
else
	new=1
	opacity=0.9
fi

echo "$new" > "$STATE_FILE"

echo Changed opacity value

hyprctl --batch "keyword decoration:active_opacity $opacity; keyword decoration:inactive_opacity $opacity"

echo Opacity changed
