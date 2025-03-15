return
{
	"sschleemilch/slimline.nvim",
    	opts = {
	},
	config = function()
		require('slimline').setup {
			bold = false, -- makes primary parts and mode bold
			verbose_mode = true, -- Mode as single letter or as a word
			style = 'bg', -- or "fg". Whether highlights should be applied to bg or fg of components
			mode_follow_style = false, -- Whether the mode color components should follow the style option
			workspace_diagnostics = false, -- Whether diagnostics should show workspace diagnostics instead of current buffer
			components = { -- Choose components and their location
				left = {
					"mode",
					"path",
					"git"
				},
				center = {
				},
				right = {
      					"diagnostics",
      					"filetype_lsp",
      					"progress"
				}
  			},
			spaces =
			{
				components = '-', -- string between components
    				left = '', -- string at the start of the line
    				right = '', -- string at the end of the line
  			},
  			sep =
			{
    				hide = {
					first = true, -- hides the first separator
					last = true, -- hides the last separator
				},
				left = '',
				right = ''
    			--	left = '',
			--	right = '',
			--	left = '', -- left separator of components
    			--	right = '', -- right separator of components
			},
	                hl ={
    				modes = {
      					normal = 'SlimlineModeNormal', -- highlight base of modes
      					insert = 'SlimlineModeInsert',
      					pending = 'SlimlineModePending',
      					visual = 'SlimlineModeVisual',
      					command = 'SlimlineModeCommand',
    				},
    				base = 'SlimlineBase', -- highlight of everything in in between components
    				primary = 'SlimlinePrimary', -- highlight of primary parts (e.g. filename)
    				secondary = 'SlimlineSecondary', -- highlight of secondary parts (e.g. filepath)
  			},
			icons = {
    				diagnostics = {
      					ERROR = 'ERROR  ',
      					WARN = 'WARNING  ',
      					HINT = 'HINT  ',
      					INFO = 'INFO  ',
    				},
    				git = {
      					branch = '',
    				},
    				folder = '󰉋',
    				lines = '󰦪',
    				recording = '',
    				buffer = {
      					modified = '',
      					read_only = '',
    				},
  			},
		}
	end
}


