-- Bootstraping lazy.nvim
require('config.lazy-bootstrap')

vim.g.mapleader = " "
vim.g.maplocalleader = "\\"

require('config.options')
require('config.autocmds')
require('config.lazy-config')

--require('config.autocmds')

require('config.keymaps')
