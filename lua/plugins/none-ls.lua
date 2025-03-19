return
{
	"nvimtools/none-ls.nvim",
	config = function()
		local null_ls = require("null-ls")

		null_ls.setup({
			sources = {

				-- CONFIGURATIONS OF LUA LANG
				-- FORMATTER|
				null_ls.builtins.formatting.stylua,

				-- CONFIGURATION OF 
				-- TS AND JS
				null_ls.eslint,
				null_ls.builtins.formatting.prettier,

				-- CONFIGURATIONS OF C#
				null_ls.builtins.formatting.csharpier,
			},
			on_attach = function(client, bufnr)
     				local opts = { noremap = true, silent = true }
     				vim.keymap.set("n", "<leader>f",
					function()
       						vim.lsp.buf.format({ async = true })end, opts)
   					end,
			});
	end
}
