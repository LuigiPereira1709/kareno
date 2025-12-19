--- Kareno for markid
--- https://github.com/David-Kunz/markid
---
--- @usage
--- local highlights = require("kareno.plugins.markid")
--- require("nvim-treesitter.configs").setup({ markid = { enable = true, colors = highlights } })

local p = require("kareno.palette")

return { p.blue, p.pink, p.purple }
