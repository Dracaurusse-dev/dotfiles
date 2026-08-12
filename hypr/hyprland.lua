hl.env("LIBVA_DRIVER_NAME", "nvidia")
hl.env("XDG_SESSION_TYPE", "wayland")
hl.env("GBM_BACKEND", "nvidia-drm")
hl.env("__GLX_VENDOR_LIBRARY_NAME", "nvidia")
hl.env("HYPRCURSOR_THEME", "HyprCatppuccinMochaMauve")

require("lua/custom")


hl.config({
	general = {
		gaps_in = 5,
		gaps_out = 20,

		border_size = 2,

		col = {
			active_border   = { colors = {"rgba(f19cbbee)", "rgba(8c2b60ee)"}, angle = 45 },
            		inactive_border = "rgba(595959aa)",
		},

		resize_on_border = false,

		allow_tearing = true,

		layout = "dwindle",
	},

	decoration = {
		rounding = 10,
		rounding_power = 2,

		active_opacity = opac,
		inactive_opacity = opac,

		shadow = {
			enabled = true,
			range = 4,
			render_power = 3,
			color = 0xee1a1a1a,
		},

		blur = {
			enabled = false,
		},
	},
	
	opengl = {
		nvidia_anti_flicker = false
	},

	master = {
		new_status = master,
	},

	misc = {
		force_default_wallpaper = 0,
		disable_hyprland_logo = true,
	},

	animations = { enabled = false, },

	input = {
		kb_layout = "fr",
		kb_variant = "",
		kb_model = "",
		kb_options = "caps:escape",
		kb_rules = "",

		follow_mouse = 1,

		sensitivity = 0,

		touchpad = {
			natural_scroll = true,
		},
	},
})

hl.device({
	name = "epic-mouse-v1",
	sensitivity = -0.5,
})

hl.gesture({
	fingers = 3,
	direction = "horizontal",
	action = "workspace",
})

hl.animations = { enabled = false; };
