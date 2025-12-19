local p = require("kareno.palette")
local config = require("kareno.config")

local bg_base = p.base
if config.options.styles.transparency then
	bg_base = "NONE"
end

return {
	normal = {
		a = { bg = p.surface, fg = p.pink, gui = "bold" },
		b = { bg = p.surface, fg = p.text },
		c = { bg = p.surface, fg = p.subtle, gui = "italic" },
	},
	insert = {
		a = { bg = p.surface, fg = p.blue, gui = "bold" },
	},
	visual = {
		a = { bg = p.surface, fg = p.purple, gui = "bold" },
	},
	replace = {
		a = { bg = p.surface, fg = p.teal, gui = "bold" },
	},
	command = {
		a = { bg = p.surface, fg = p.red, gui = "bold" },
	},
	inactive = {
		a = { bg = bg_base, fg = p.subtle, gui = "bold" },
		b = { bg = bg_base, fg = p.subtle },
		c = { bg = bg_base, fg = p.subtle, gui = "italic" },
	},
}
