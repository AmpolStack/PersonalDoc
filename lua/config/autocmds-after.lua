
local c = require("config.colors")

--dashboard.section.header.opts.hl = "MyLogoHighlight"
--dashboard.section.buttons.opts.hl = "AlphaButtons"
--dashboard.section.buttons.opts.hl_shortcut = "AlphaShortcut"

-- PRINCIPAL SLIMLINE PROPERTIES
vim.api.nvim_set_hl(0, "SlimlinePrimary", { fg = c.yellow_lin, bg = c.black_yellow, bold = false }) -- Amarillo para elementos principales
vim.api.nvim_set_hl(0, "SlimlineSecondary", { fg = c.single_blue, bg = c.black_yellow, bold = false }) -- Azul para elementos secundarios

vim.opt.fillchars = {
	stl = "-",
}


vim.api.nvim_set_hl(0, "MyLogoHighlight", { fg = c.single_purple, bold = false })
vim.api.nvim_set_hl(0, "AlphaButtons", { fg = c.single_blue , bg = "" , bold = false })
vim.api.nvim_set_hl(0, "AlphaShortcut", { fg = c.custom_text_fg , bg = c.black_yellow, bold = false })
vim.api.nvim_set_hl(0, "AlphaSubtitle", { fg = c.single_purple, bg = "" ,bold = true})
vim.api.nvim_set_hl(0, "AlphaFooter", {fg = c.single_purple, bg = "", bold = false})

