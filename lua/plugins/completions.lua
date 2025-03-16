return{
	{
		"hrsh7th/nvim-cmp",
        	dependencies = {
            		"hrsh7th/cmp-nvim-lsp",
            		"L3MON4D3/LuaSnip",
            		"onsails/lspkind.nvim"
        },
        config = function()
            local cmp = require("cmp")
            cmp.setup({
                mapping = {
                    ["<Tab>"] = cmp.mapping.select_next_item(),
                    ["<S-Tab>"] = cmp.mapping.select_prev_item(),
                    ["<CR>"] = cmp.mapping.confirm({ select = true }),
                },
                sources = { { name = "nvim_lsp" } }
            })
        end
	}
}
