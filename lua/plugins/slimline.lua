return {
  "sschleemilch/slimline.nvim",
  config = function()
    require('slimline').setup({
      bold = true,
      style = 'fg',
      components = {
        left = {
          "mode",
          "path",
          "git"
        },
        center = {},
        right = {
          "diagnostics",
          "filetype_lsp",
          "progress"
        }
      },
      spaces = {
        components = ' ',
        left = '',
        right = '',
      },
      sep = {
        hide = {
          first = true,
          last = true,
        },
        left = '',
        right = '',
      },
      configs = {
        mode = {
          verbose = true,       -- Reemplaza verbose_mode
          style = false,        -- Reemplaza mode_follow_style
          hl = {                -- Reemplaza hl.modes
            normal = 'SlimlineModeNormal',
            insert = 'SlimlineModeInsert',
            pending = 'SlimlineModePending',
            visual = 'SlimlineModeVisual',
            command = 'SlimlineModeCommand',
          }
        },
        path = {
          directory = true, -- Whether to show the directory
          icons = {
            folder = '󰉋 ',
            modified = '',
            read_only = '',
          },
        },
        diagnostics = {
          workspace = false,    -- Reemplaza workspace_diagnostics
          icons = {             -- Configuración específica de íconos
            error = '',
            warn = '',
            info = '',
            hint = '',
          }
        },
        git = {
          icons = {
            branch = '',
            added = '+',
            modified = '~',
            removed = '-'
          }-- Ícono específico para componente git_branch
        },
        filetype_lsp = {
          icon = ''            -- Ejemplo de ícono para LSP
        },
      },
      hl = {
        base = 'SlimlineBase',
        primary = 'SlimlinePrimary',
        secondary = 'SlimlineSecondary',
      }
    })
  end
}
