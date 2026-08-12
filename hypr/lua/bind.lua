--hl.bind(mainMod .. " + E", hl.dsp.exec_cmd(fileManager))
hl.bind(mainMod .. " + Return", hl.dsp.exec_cmd(terminal))
hl.bind(mainMod .. " + C", hl.dsp.window.close())
hl.bind(mainMod .. " + F", hl.dsp.window.fullscreen())

hl.bind(mainMod .. " + ALT + S", hl.dsp.exec_cmd("hyprshutdown --post-cmd 'loginctl poweroff'"))
hl.bind(mainMod .. " + ALT + E", hl.dsp.exec_cmd("hyprshutdown --vt 1"))
hl.bind(mainMod .. " + ALT + R", hl.dsp.exec_cmd("hyprshutdown --post-cmd 'loginctl reboot'"))
hl.bind(mainMod .. " + ALT + L", hl.dsp.exec_cmd("hyprlock"))

hl.bind(mainMod .. " + SHIFT + W", hl.dsp.exec_cmd("~/.config/hypr/hyprpaper.conf.d/randomwallpaper.sh"))

hl.bind(mainMod .. " + T", toggle_opacity)
hl.bind("Print", hl.dsp.exec_cmd("$HOME/.config/hypr/scripts/screenshot.sh"))

hl.bind(mainMod .. " + CTRL + D", hl.dsp.exec_cmd("discord --enable-features=UseOzonePlatform --ozone-platform=wayland"))
hl.bind(mainMod .. " + CTRL + B", hl.dsp.exec_cmd("~/.local/bin/helium"))
hl.bind(mainMod .. " + CTRL + G", hl.dsp.exec_cmd("vimb"))
hl.bind(mainMod .. " + CTRL + E", hl.dsp.exec_cmd("heroic-run"))
hl.bind(mainMod .. " + CTRL + R", hl.dsp.exec_cmd("flatpak run org.vinegarhq.Sober"))
hl.bind(mainMod .. " + CTRL + C", hl.dsp.exec_cmd("mc"))
hl.bind(mainMod .. " + CTRL + M", hl.dsp.exec_cmd(spot))
hl.bind(mainMod .. " + CTRL + S", hl.dsp.exec_cmd("steam"))
hl.bind(mainMod .. " + CTRL + V", hl.dsp.exec_cmd(terminal .. " -e vim"))

hl.bind("ALT + SHIFT + D", hl.dsp.focus({ workspace = discordWP }))
hl.bind("ALT + SHIFT + S", hl.dsp.focus({ workspace = musicWP}))
hl.bind("ALT + SHIFT + G", hl.dsp.focus({ workspace = gameWP }))
hl.bind("ALT + SHIFT + B", hl.dsp.focus({ workspace = browserWP }))
hl.bind("ALT + SHIFT + C", hl.dsp.focus({ workspace = codeWP }))

hl.bind(mainMod .. " + H", hl.dsp.focus({ direction = "left" }))
hl.bind(mainMod .. " + J", hl.dsp.focus({ direction = "down" }))
hl.bind(mainMod .. " + K", hl.dsp.focus({ direction = "up" }))
hl.bind(mainMod .. " + L", hl.dsp.focus({ direction = "right" }))

hl.bind(mainMod .. " + CTRL + H", hl.dsp.window.move({ direction = "left" }))
hl.bind(mainMod .. " + CTRL + J", hl.dsp.window.move({ direction = "down" }))
hl.bind(mainMod .. " + CTRL + K", hl.dsp.window.move({ direction = "up" }))
hl.bind(mainMod .. " + CTRL + L", hl.dsp.window.move({ direction = "right" }))

hl.bind(mainMod .. " + ampersand", hl.dsp.focus({ workspace = 1}))
hl.bind(mainMod .. " + eacute", hl.dsp.focus({ workspace = 2 }))
hl.bind(mainMod .. " + quotedbl", hl.dsp.focus({ workspace = 3 }))
hl.bind(mainMod .. " + apostrophe", hl.dsp.focus({ workspace = 4 }))
hl.bind(mainMod .. " + parenleft", hl.dsp.focus({ workspace = 5 }))
hl.bind(mainMod .. " + minus", hl.dsp.focus({ workspace = 6 }))
hl.bind(mainMod .. " + egrave", hl.dsp.focus({ workspace = 7 }))
hl.bind(mainMod .. " + underscore", hl.dsp.focus({ workspace = 8 }))
hl.bind(mainMod .. " + ccedilla", hl.dsp.focus({ workspace = 9 }))
hl.bind(mainMod .. " + agrave", hl.dsp.focus({ workspace = 10 }))


-- Default binds
-- Laptop multimedia keys for volume and LCD brightness
hl.bind("XF86AudioRaiseVolume", hl.dsp.exec_cmd("wpctl set-volume -l 1 @DEFAULT_AUDIO_SINK@ 5%+"), { locked = true, repeating = true })
hl.bind("XF86AudioLowerVolume", hl.dsp.exec_cmd("wpctl set-volume @DEFAULT_AUDIO_SINK@ 5%-"),      { locked = true, repeating = true })
hl.bind("XF86AudioMute",        hl.dsp.exec_cmd("wpctl set-mute @DEFAULT_AUDIO_SINK@ toggle"),     { locked = true, repeating = true })
hl.bind("XF86AudioMicMute",     hl.dsp.exec_cmd("wpctl set-mute @DEFAULT_AUDIO_SOURCE@ toggle"),   { locked = true, repeating = true })
hl.bind("XF86MonBrightnessUp",  hl.dsp.exec_cmd("brightnessctl -e4 -n2 set 5%+"),                  { locked = true, repeating = true })
hl.bind("XF86MonBrightnessDown",hl.dsp.exec_cmd("brightnessctl -e4 -n2 set 5%-"),                  { locked = true, repeating = true })

-- Requires playerctl
hl.bind("XF86AudioNext",  hl.dsp.exec_cmd("playerctl next"),       { locked = true })
hl.bind("XF86AudioPause", hl.dsp.exec_cmd("playerctl play-pause"), { locked = true })
hl.bind("XF86AudioPlay",  hl.dsp.exec_cmd("playerctl play-pause"), { locked = true })
hl.bind("XF86AudioPrev",  hl.dsp.exec_cmd("playerctl previous"),   { lockmoveed = true })
