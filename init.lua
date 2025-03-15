-- Bootstraping lazy.nvim
require("config.lazy-bootstrap")

vim.o.clipboard = "unnamedplus"
vim.g.mapleader = " "
vim.g.maplocalleader = "\\"

require("config.options")

require("config.autocmds-before")

require("config.lazy-config")

require('config.autocmds-after')

require("config.keymaps")

