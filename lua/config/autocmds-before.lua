
local c = require("config.colors")
local show_transparent_bg = false
if show_transparent_bg == true then
	-- IF U ARE LOOKING TO PUT THE BACKGROUND TRANSPARENT, APPLY THIS
	vim.api.nvim_set_hl(0, "SlimlineModeNormal", { bg = c.single_blue, fg = c.black_yellow, bold = true })
	vim.api.nvim_set_hl(0, "SlimlineModeInsert", { bg = c.single_purple, fg = c.black_yellow, bold = true })
	vim.api.nvim_set_hl(0, "SlimlineModeVisual", { bg = c.single_pink, fg = c.black_yellow, bold = true })
	vim.api.nvim_set_hl(0, "SlimlineModeCommand", { bg = c.single_red, fg = c.black_yellow, bold = true })
	vim.api.nvim_set_hl(0, "SlimlineModePending", { bg = c.most_red, fg = c.black_yellow, bold = true })
else
	-- ELSE APPLY THIS
	vim.api.nvim_set_hl(0, "SlimlineModeNormal", { fg = c.single_blue, bg = c.black_yellow, bold = true })
	vim.api.nvim_set_hl(0, "SlimlineModeInsert", { fg = c.single_purple, bg = c.black_yellow, bold = true })
	vim.api.nvim_set_hl(0, "SlimlineModeVisual", { fg = c.single_pink, bg = c.black_yellow, bold = true })
	vim.api.nvim_set_hl(0, "SlimlineModeCommand", { fg = c.single_red, bg = c.black_yellow, bold = true })
	vim.api.nvim_set_hl(0, "SlimlineModePending", { fg = c.most_red, bg = c.black_yellow, bold = true })
end

vim.api.nvim_set_hl(0, "SlimlineBase", { bg = c.black_yellow , fg = c.custom_text_fg }) -- Fondo de la barra y texto base
--vim.api.nvim_set_hl(0, "AlphaButtons", { fg = c.single_blue, bg = c.most_red , bold = true })



