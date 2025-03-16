return
{
	-- LSPs Manager Configuration
	{
		"williamboman/mason.nvim",
        	config = function()
            	require("mason").setup()
        	end
	},

	-- Mason-LspConfig: Are the connection between Mason and LSP
	{
		"williamboman/mason-lspconfig.nvim",
        	dependencies = { "neovim/nvim-lspconfig" },
        	config = function()
            		require("mason-lspconfig").setup({
                	ensure_installed = { "ts_ls", "lua_ls", "jsonls", "marksman" }
            	})
        	end
	},
	-- its good practice, becausa ... idk
	{
		"b0o/schemastore.nvim", -- Para mejorar autocompletado de JSON
  	},
	-- LspConfig: Define the LSP SERVERS
	{
		"neovim/nvim-lspconfig",
		config = function()
			local lspconfig = require("lspconfig")
			-- declare a default capabilities from cmp-nvim
			local capabilities = require("cmp_nvim_lsp").default_capabilities()

			vim.diagnostic.config({
      				virtual_text = true,   -- Muestra mensajes de error directamente en el buffer
      				signs = true,          -- Muestra signos en el margen
      				underline = true,      -- Subraya el texto con errores
      				update_in_insert = true, -- Actualiza diagnósticos incluso en modo inserción
      				severity_sort = false, -- No ordena por severidad
    })


			-- Typescript & Javascript Server
			 lspconfig.ts_ls.setup({
        		 	cmd = { vim.fn.stdpath("data") .. "/mason/bin/typescript-language-server", "--stdio" },
        			on_attach = function(client, bufnr)
          				-- Habilitar formato con null-ls en lugar de tsserver
          				client.server_capabilities.documentFormattingProvider = false
        			end,
        			settings = {
          				typescript = {
            					inlayHints = { includeInlayParameterNameHints = "all" },
          				},
        			},
      			})

			-- Lua Server
			lspconfig.lua_ls.setup{
				cmd = { "C:/Users/htrsa/AppData/Local/nvim-data/mason/packages/lua-language-server/bin/lua-language-server.exe" },
				settings = {
					Lua = {
						runtime = { version = "LuaJIT"},
						diagnostics = { globals = {"vim"}},
						workspace = { library = vim.api.nvim_get_runtime_file("",true)}
					}
				}
			}

			-- JSON Server
			 lspconfig.jsonls.setup({
        			settings = {
          				json = {
            					schemas = require("schemastore").json.schemas(), -- Descarga esquemas JSON
            					validate = { enable = true },
          				},
        			},
      			})

			-- Markdown
			lspconfig.marksman.setup{
				cmd = {"C:/Users/htrsa/AppData/Local/nvim-data/mason/packages/marksman/marksman.exe"}
			}

			    vim.keymap.set("n", "gd", vim.lsp.buf.definition, { desc = "Ir a definición" })
    			    vim.keymap.set("n", "K", vim.lsp.buf.hover, { desc = "Mostrar documentación" })
    			    vim.keymap.set("n", "<leader>rn", vim.lsp.buf.rename, { desc = "Renombrar símbolo" })
		end
	},

}
