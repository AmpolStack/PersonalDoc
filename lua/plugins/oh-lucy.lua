return
{
	'Yazeed1s/oh-lucy.nvim',
	lazy = false,
	priority = 999,
	config = function()
		require('oh-lucy')
		vim.cmd('colorscheme oh-lucy-evening')
	end
}
