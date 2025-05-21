-- Bootstraping lazy.nvim
--vim.cmd("set wildmenu") -- Activa el menú de autocompletado
--vim.cmd("set wildmode=longest,list,full") -- Mejora el autocompletado en comandos
--vim.cmd("set inccommand=split") -- Muestra los cambios en vivo

vim.o.clipboard = "unnamedplus"
vim.g.mapleader = " "
vim.g.maplocalleader = "\\"


-- require("config.autocmds-before")


require("config.lazy-bootstrap")
require("config.lazy-config")
require("config.options")


-- require("config.autocmds-after")


require("config.keymaps")


