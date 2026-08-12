hl.monitor({
	output   = "HDMI-A-1",
	mode     = "1920x1080@200",
	position = "0x0",
	scale    = 1,
	bitdepth = 10,
	cm	 = "srgb",
})

hl.monitor({
	output   = "eDP-1",
	mode     = "1920x1080@60",
	position = "1920x0",
	scale 	 = 1,
	bitdepth = 8,
	cm 	 = "srgb",
})

hl.workspace_rule({workspace = discordWP, monitor = "eDP-1", default = true, persistent = true })
hl.workspace_rule({workspace = gameWP, monitor = "HDMI-A-1", default = true, persistent = true})
hl.workspace_rule({workspace = musicWP, monitor = "eDP-1", default = true, persistent = true })
hl.workspace_rule({workspace = browserWP, monitor = "eDP-1", default = true, persistent = true })
hl.workspace_rule({workspace = codeWP, monitor = "HDMI-A-1", default = true, persistent = true })

hl.window_rule({ match = { class = "discord" }, workspace = discordWP })
hl.window_rule({ match = { class = "spotify" }, workspace = musicWP })
hl.window_rule({ match = { class = "helium" }, workspace = browserWP })
hl.window_rule({ match = { class = "(steam.*|heroic|sober|org.vinegarhq.Sober)" }, workspace = gameWP})

--hl.window_rule({ match = { class = "*" }, tag = +toggle_opacity})
hl.window_rule({ match = { class = ".*" }, tag = "toggle_opacity"})

hl.on("hyprland.start", function ()
	hl.exec_cmd("[workspace " .. discordWP .. "] discord")
	hl.exec_cmd("[workspace " .. musicWP   .. "] ".. spot)
	hl.exec_cmd("[workspace " .. codeWP    .. "]" .. terminal)
	hl.exec_cmd("[workspace " .. browserWP .. "] ~/.local/bin/helium")
	hl.exec_cmd("[workspace " .. gameWP    .. "] heroic")
end)


