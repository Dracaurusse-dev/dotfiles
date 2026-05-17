function toggle_opacity()
	is_opaque = not is_opaque
	local opacity_value = 1

	if (not is_opaque) then
		opacity_value = 0.9
	end

	hl.config({
		decoration = {
			active_opacity = opacity_value,
			inactive_opacity = opacity_value
		},
	})
	
	hl.window_rule({ match = { tag = "toggle_opacity" }, opaque = is_opaque })
end


function screenshot()
	toggle_opacity()

	hl.dispatch(hl.dsp.exec_cmd("grimblast copy area"))

	toggle_opacity()
end

