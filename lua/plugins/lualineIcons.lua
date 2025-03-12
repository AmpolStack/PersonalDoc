
-- It is a package of dev icons, for text, bubbles, and gaps
return {
    'nvim-lualine/lualine.nvim',
    dependencies = { 'nvim-tree/nvim-web-devicons' },
    -- configuration of package
    config = function()
	require('lualine').setup({
		options = {
			theme = 'auto'
		},
	})
    end,
}
