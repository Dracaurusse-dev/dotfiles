#!/usr/bin/env bash

$HOME/.config/hypr/scripts/toggle_opacity.sh

grim -g "$(slurp)" - | wl-copy

$HOME/.config/hypr/scripts/toggle_opacity.sh
