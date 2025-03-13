return
{
	"nvim-treesitter/nvim-treesitter",
	build = ":TSUpdate",
	config = function()
		require("nvim-treesitter.configs").setup(
		{
			ensure_installed = {"lua", "c_sharp"},
			indent = { enabled = true},
			higthligth = {enabled = true},
			sync_install = false,
		})
	end
}
