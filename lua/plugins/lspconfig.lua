return
{
  "neovim/nvim-lspconfig",
  config = function()
    -- Cargamos el módulo lspconfig para configurar los LSP
    local lspconfig = require("lspconfig")
    -- Establecemos las capacidades para integrar con nvim-cmp (autocompletado)
    local capabilities = require("cmp_nvim_lsp").default_capabilities()

    -- Definimos un borde personalizado para las ventanas flotantes de LSP
    local border = {
    --  { "🭽", "FloatBorder" },
      { "", "FloatBorder" },
      { "▔", "FloatBorder" },
      { "🭾", "FloatBorder" },
      { "▕", "FloatBorder" },
      { "🭿", "FloatBorder" },
      { "▁", "FloatBorder" },
      { "🭼", "FloatBorder" },
      { "▏", "FloatBorder" },
    }

    -- Guardamos la función original para abrir ventanas flotantes de LSP
    local orig_util_open_floating_preview = vim.lsp.util.open_floating_preview
    -- Sobrescribimos la función para que utilice por defecto nuestro borde personalizado
    vim.lsp.util.open_floating_preview = function(contents, syntax, opts, ...)
      opts = opts or {}
      opts.border = opts.border or border
      return orig_util_open_floating_preview(contents, syntax, opts, ...)
    end

    -- Configuramos las opciones globales para las notificaciones de diagnóstico
    vim.diagnostic.config({
      virtual_text = true,   -- Muestra mensajes de error directamente en el buffer
      signs = true,          -- Muestra signos en el margen
      underline = true,      -- Subraya el texto con errores
      update_in_insert = true, -- Actualiza diagnósticos incluso en modo inserción
      severity_sort = false, -- No ordena por severidad
    })

    -- Configuración del servidor de Lua (lua_ls)
    lspconfig.lua_ls.setup {
      capabilities = capabilities,  -- Integra las capacidades de autocompletado
      settings = {
        Lua = {
          diagnostics = {
            globals = { "vim" }  -- Reconoce "vim" como variable global
          }
        }
      }
    }

    -- Configuración del servidor de C# (csharp_ls)
    lspconfig.csharp_ls.setup({

	    on_attach = function(client, bufnr)
    local opts = { noremap = true, silent = true, buffer = bufnr }

    -- Navegación y documentación usando LSP
    vim.keymap.set('n', 'gd', vim.lsp.buf.definition, opts)
    vim.keymap.set('n', 'K', vim.lsp.buf.hover, opts)          -- Muestra documentación al hacer hoover
    vim.keymap.set('n', 'gr', vim.lsp.buf.references, opts)
    vim.keymap.set('n', '<leader>rn', vim.lsp.buf.rename, opts)

    -- Integración con Telescope: para buscar definiciones
    vim.keymap.set('n', '<leader>d', require('telescope.builtin').lsp_definitions, opts)
  end,
  flags = {
    debounce_text_changes = 150,
  },
      capabilities = capabilities,  -- Integra las capacidades de autocompletado
      -- Puedes agregar más configuraciones específicas para C# aquí si lo deseas
    })
  end
}

