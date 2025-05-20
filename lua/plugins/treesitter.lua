return
{
	"nvim-treesitter/nvim-treesitter",
	build = ":TSUpdate",
	event = { "BufReadPre", "BufNewFile" },
	config = function()
		require("nvim-treesitter.configs").setup(
		{
			ensure_installed = {"lua", "typescript", "c_sharp", "phyton"},
			indent = { enabled = true},
			higthligth = {enabled = true},
			sync_install = false,
		})
	end
}
