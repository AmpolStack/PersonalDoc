require("lazy").setup({
  spec = {
    -- import your plugins
    { import = "plugins.kanagawa"},
    { import = "plugins.telescope" },
    { import = "plugins.gitsings" },
   -- { import = "plugins.oh-lucy" },
   -- { import = "plugins.lualineIcons" },
    { import = "plugins.slimline"},
    { import = "plugins.dev-icons"},
    { import = "plugins.tree"},
    { import = "plugins.oil"},
    { import = "plugins.mason"},
  },
  -- Configure any other settings here. See the documentation for more details.
  -- colorscheme that will be used when installing plugins.
  install = { colorscheme = { "habamax" } },
  -- automatically check for plugin updates
  checker = { enabled = true },
})
