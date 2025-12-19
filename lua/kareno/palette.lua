local options = require("kareno.config").options
local variants = {
	yoru = {
		_nc = "#050505",
		base = "#050505",
		surface = "#121212",
		overlay = "#1f1f1f",
		muted = "#555555",
		subtle = "#808080",
		text = "#dcdcdc",
		red = "#f08fa5",
		yellow = "#d8b085",
		pink = "#ffb3c3",
		teal = "#8aa8a8",
		blue = "#9ab8c2",
		purple = "#c29abb",
		green = "#95b595",
		highlight_low = "#1a1a1a",
		highlight_med = "#303030",
		highlight_high = "#eb9fac",
		none = "NONE",
	},
	yami = {
		_nc = "#000000",
		base = "#000000",
		surface = "#0a0a0a",
		overlay = "#141414",
		muted = "#333333",
		subtle = "#4f4f4f",
		text = "#999999",
		red = "#8a4b5d",
		pink = "#a6858e",
		purple = "#7d6678",
		yellow = "#8f806d",
		teal = "#586e6e",
		blue = "#637680",
		green = "#697869",
		highlight_low = "#0d0d0d",
		highlight_med = "#1a1a1a",
		highlight_high = "#261518",
		none = "NONE",
	},
}

if options.palette ~= nil and next(options.palette) then
	-- handle variant specific overrides
	for variant_name, override_palette in pairs(options.palette) do
		if variants[variant_name] then
			variants[variant_name] = vim.tbl_extend("force", variants[variant_name], override_palette or {})
		end
	end
end

if variants[options.variant] ~= nil then
	return variants[options.variant]
end

return variants[options.dark_variant or "yoru"]
