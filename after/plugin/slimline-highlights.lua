local c = require("config.colors")
local show_transparent_bg = false
-- Configuración principal de Slimline
vim.api.nvim_set_hl(0, "SlimlineBase", {
  bg = show_transparent_bg and "NONE" or c.black_yellow,
  fg = c.custom_text_fg
})

vim.api.nvim_set_hl(0, "SlimlinePrimary", {
  fg = c.yellow_lin,
  bg = show_transparent_bg and "NONE" or c.black_yellow,
  bold = false
})

vim.api.nvim_set_hl(0, "SlimlineSecondary", {
  fg = c.single_blue,
  bg = show_transparent_bg and "NONE" or c.black_yellow,
  bold = false
})

-- Configuración condicional de modos
local mode_hl = {
  Normal = { fg = c.single_blue,  bg = show_transparent_bg and "NONE" or c.black_yellow  },
  Insert = { fg = c.single_purple, bg = show_transparent_bg and "NONE" or c.black_yellow },
  Visual = { fg = c.single_pink, bg = show_transparent_bg and "NONE" or c.black_yellow },
  Command = { fg = c.single_red, bg = show_transparent_bg and "NONE" or c.black_yellow },
  Pending = { fg = c.most_red, bg = show_transparent_bg and "NONE" or c.black_yellow }
}

for mode, colors in pairs(mode_hl) do
  vim.api.nvim_set_hl(0, "SlimlineMode"..mode, {
    fg = colors.fg,
    bg = colors.bg,
    bold = true
  })
end

-- Configuración de Alpha (dashboard)
vim.api.nvim_set_hl(0, "MyLogoHighlight", {
  fg = c.single_purple,
  bold = false
})

vim.api.nvim_set_hl(0, "AlphaButtons", {
  fg = c.single_blue,
  bg = "NONE",
  bold = false
})

vim.api.nvim_set_hl(0, "AlphaShortcut", {
  fg = c.custom_text_fg,
  bg = show_transparent_bg and "NONE" or c.black_yellow,
  bold = false
})

vim.api.nvim_set_hl(0, "AlphaSubtitle", {
  fg = c.single_purple,
  bg = "NONE",
  bold = true
})

vim.api.nvim_set_hl(0, "AlphaFooter", {
  fg = c.single_purple,
  bg = "NONE",
  bold = false
})

vim.opt.fillchars = {
    stl = "-",
}


