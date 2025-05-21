require("lazy").setup({
  spec = {
    -- import your plugins
    --
    { import = "plugins.lsp"},
    { import = "plugins.completions"},
    { import = "pluggins.cmp"},
    { import = "plugins.treesitter" },
    { import = "plugins.kanagawa"},
    { import = "plugins.telescope" },
    { import = "plugins.slimline"},
    { import = "plugins.dev-icons"},
    { import = "plugins.oil"},
    { import = "plugins.alpha"},
    { import = "plugins.barbar"},
    { import = "plugins.lazygit-config"},
    { import = "plugins.editorconfig"},
    { import = "plugins.toggle-term"},
    { import = "plugins.none-ls"},
  },
  -- Configure any other settings here. See the documentation for more details.
  -- colorscheme that will be used when installing plugins.
  install = { colorscheme = { "habamax" } },
  -- automatically check for plugin updates
  checker = { enabled = true },
})
