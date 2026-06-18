#!/usr/bin/env bash

# No idea how to do that in lua, doing set_windows_opaque before and after an exec cmd wont work for some reason

start_opaque=$(hyprctl getprop "active" "opaque")

hyprctl eval "set_windows_opaque(true)"

hyprshot -zsm region

hyprctl eval "set_windows_opaque($start_opaque)"

