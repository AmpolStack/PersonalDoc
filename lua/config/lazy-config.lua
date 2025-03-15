require("lazy").setup({
  spec = {
    -- import your plugins
    --
    { import = "plugins.lspconfig"},
    { import = "plugins.treesitter" },
    { import = "plugins.kanagawa"},
    { import = "plugins.telescope" },
    { import = "plugins.slimline"},
    { import = "plugins.dev-icons"},
    { import = "plugins.mason"},
    { import = "plugins.trouble"},
    { import = "plugins.oil"},
    { import = "plugins.cmp" },
    { import = "plugins.toggleterm"},
--    { import = "plugins.none-ls"},
    { import = "plugins.alpha"},
    { import = "plugins.visual-multi" },
  },
  -- Configure any other settings here. See the documentation for more details.
  -- colorscheme that will be used when installing plugins.
  install = { colorscheme = { "habamax" } },
  -- automatically check for plugin updates
  checker = { enabled = true },
})
