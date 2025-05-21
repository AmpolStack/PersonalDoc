return {
  -- LSPs Manager Configuration
  {
    "williamboman/mason.nvim",
    build = ":MasonUpdate",
    config = function()
      require("mason").setup()
    end,
  },

  -- Mason-LspConfig: Bridges Mason and lspconfig
  {
    "williamboman/mason-lspconfig.nvim",
    dependencies = { "mason.nvim" },
    config = function()
      require("mason-lspconfig").setup({
        -- servidores que quieres asegurar instalados
        ensure_installed = {
          "csharp_ls", "ts_ls", "lua_ls", "jsonls",
          "marksman", "pyright", "angularls", "html", "cssls"
        },
        automatic_installation = true,
        -- <<< Añade esta línea para DESHABILITAR el feature roto >>>
        automatic_enable = false,
      })
    end,
  },

  -- Schema Store for better JSON completion
  {
    "b0o/schemastore.nvim",
  },

  -- LspConfig: Define the LSP servers
  {
    "neovim/nvim-lspconfig",
    dependencies = { "hrsh7th/cmp-nvim-lsp" },
    config = function()
      local lspconfig    = require("lspconfig")
      local capabilities = require("cmp_nvim_lsp").default_capabilities()

      -- Global diagnostic config
      vim.diagnostic.config({
        virtual_text    = true,
        signs           = true,
        underline       = true,
        update_in_insert= true,
        severity_sort   = false,
      })

      -- Custom border for floating windows
      local border = {
        { "", "FloatBorder" }, { "▔", "FloatBorder" }, { "🭾", "FloatBorder" },
        { "▕", "FloatBorder" }, { "🭿", "FloatBorder" }, { "▁", "FloatBorder" },
        { "🭼", "FloatBorder" }, { "▏", "FloatBorder" },
      }
      local orig_open = vim.lsp.util.open_floating_preview
      vim.lsp.util.open_floating_preview = function(contents, syntax, opts, ...)
        opts = opts or {}
        opts.border = opts.border or border
        return orig_open(contents, syntax, opts, ...)
      end

      -- Common on_attach
      local on_attach = function(client, bufnr)
        local opts = { noremap = true, silent = true, buffer = bufnr }
        vim.keymap.set('n', 'gd', vim.lsp.buf.definition, opts)
        vim.keymap.set('n', 'K', vim.lsp.buf.hover, opts)
        vim.keymap.set('n', 'gr', vim.lsp.buf.references, opts)
        vim.keymap.set('n', '<leader>rn', vim.lsp.buf.rename, opts)
        vim.keymap.set('n', '<leader>d', require('telescope.builtin').lsp_definitions, opts)
      end

      -- TypeScript & JavaScript
      lspconfig.ts_ls.setup({
        cmd          = { vim.fn.stdpath("data") .. "/mason/bin/typescript-language-server", "--stdio" },
        capabilities = capabilities,
        on_attach    = on_attach,
        settings     = {
          typescript = { inlayHints = { includeInlayParameterNameHints = "all" } },
        },
      })

      -- Lua
      lspconfig.lua_ls.setup({
        cmd          = { vim.fn.stdpath("data") .. "/mason/bin/lua-language-server" },
        capabilities = capabilities,
        on_attach    = on_attach,
        settings     = {
          Lua = {
            runtime   = { version = "LuaJIT" },
            diagnostics = { globals = { "vim" } },
            workspace  = { library = vim.api.nvim_get_runtime_file("", true) },
          },
        },
      })

      -- C#
      lspconfig.csharp_ls.setup({
        cmd          = { vim.fn.stdpath("data") .. "/mason/bin/csharp-ls" },
        capabilities = capabilities,
        on_attach    = on_attach,
      })

      -- JSON
      lspconfig.jsonls.setup({
        capabilities = capabilities,
        on_attach    = on_attach,
        settings     = {
          json = {
            schemas  = require("schemastore").json.schemas(),
            validate = { enable = true },
          },
        },
      })

      -- Markdown
      lspconfig.marksman.setup({
        cmd       = { vim.fn.stdpath("data") .. "/mason/bin/marksman" },
        on_attach = on_attach,
      })

      -- Python
      lspconfig.pyright.setup({
        capabilities = capabilities,
        on_attach    = on_attach,
        settings     = {
          python = {
            analysis = {
              typeCheckingMode     = "basic",
              autoSearchPaths      = true,
              useLibraryCodeForTypes = true,
            },
          },
        },
      })
    end,
  },
}

