local wezterm = require "wezterm"
local gitbash_args = {"C:\\Program Files\\Git\\bin\\bash.exe", "-i", "-l"}

local colors = {
	cursor_bg = "pink"
}

return {
    color_scheme = "Cobalt2",
    default_prog = gitbash_args,
		colors = colors,

    launch_menu = {
        {
            label = "Git Bash",
            args = gitbash_args
				}
		},
	}
