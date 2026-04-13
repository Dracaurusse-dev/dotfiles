#!/bin/bash
                                                                                                   
WALL_DIR=/usr/share/wallpapers                                                                     
                                                                                                   
PICS=($(find -L "${WALL_DIR}" -type f \( -name "*.jpg" -o -name "*.jpeg" -o -name "*.png" \)))     
RANDOM_PIC=${PICS[ $RANDOM % ${#PICS[@]}]}

pkill hyprpaper 2>/dev/null
sleep 1

cat > "$HOME/.config/hypr/hyprpaper.conf" << EOF
wallpaper  {
	monitor = 
	path = ${RANDOM_PIC}
	fit_mode = cover
}
ipc = on
splash = false
EOF

exec hyprpaper
