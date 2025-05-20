return {
  "kdheepak/lazygit.nvim",
  dependencies = {
    "nvim-lua/plenary.nvim",
  },
  cmd = "LazyGit",  -- carga solo al invocar el comando
  config = function()
    -- mapeo
    vim.keymap.set("n", "<leader>lg", ":LazyGit<CR>", {
      desc = " Abrir LazyGit",
      noremap = true,
      silent = true,
    })
  end,
}

