require("lazy").setup({
  spec = {
    -- import your plugins
    {import = "plugins.treesitter" },
    { import = "plugins.kanagawa"},
    { import = "plugins.telescope" },
    { import = "plugins.slimline"},
    { import = "plugins.dev-icons"},
    { import = "plugins.trouble"},
    { import = "plugins.oil"},
    { import = "plugins.cmp" },
    { import = "plugins.none-ls"},
    { import = "plugins.lspconfig"},
    { import = "plugins.mason"},
  },
  -- Configure any other settings here. See the documentation for more details.
  -- colorscheme that will be used when installing plugins.
  install = { colorscheme = { "habamax" } },
  -- automatically check for plugin updates
  checker = { enabled = true },
})
