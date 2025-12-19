local options = require("sakura.config").options
local variants = {
	main = {
		_nc = "#121014",
		base = "#121014",
		surface = "#1f1d2e", -- Keep partially dark or adjust? Let's use #121014 or slightly lighter
		overlay = "#26233a", -- Adjust
		muted = "#6e6a86",
		subtle = "#908caa",
		text = "#e0def4",
		love = "#ffb8d1",
		gold = "#ffb8d1",
		rose = "#ffb8d1",
		pine = "#ffb8d1",
		foam = "#ffffff", -- White for contrast
		iris = "#ffb8d1",
		leaf = "#ffb8d1", -- Add leaf too
		highlight_low = "#21202e",
		highlight_med = "#403d52",
		highlight_high = "#524f67",
		none = "NONE",
	},
}

-- Removed moon and dawn

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

return variants[options.dark_variant or "main"]
