function toggle_opacity()
	set_windows_opaque(not is_opaque)
end


function set_windows_opaque(windows_opaque)
	is_opaque = windows_opaque
	local opacity_value = 1

	if (not is_opaque) then
		opacity_value = 0.9
	end

	hl.config({
		decoration = {
			active_opacity = opacity_value,
			inactive_opacity = opacity_value,
		},
	})

	hl.window_rule({ match = { class = ".*" }, opaque = is_opaque})
end


function screenshot()
	-- Doesnt work, im using a bash script instead
	local start_opaque = is_opaque
	set_windows_opaque(true)

	hl.dispatch(hl.dsp.exec_cmd("hyprshot -m region -zs"))

	set_windows_opaque(start_opaque)

end

