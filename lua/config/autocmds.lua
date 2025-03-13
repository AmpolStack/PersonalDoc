
	-- [*] COLOR PALETTE
	local black_yellow = "#2F2E2E"
	local single_blue = "#82AAFF"
	local single_purple = "#BB9AF7"
	local single_pink = "#C678DD"
	local single_red = "#D55F87"
	local most_red = "#E06C75"
	local custom_text_fg = "#E0E0E0"


	local show_transparent_bg = true

	-- PRINCIPAL SLIMLINE PROPERTIES
	vim.api.nvim_set_hl(0, "SlimlineBase",      { bg = black_yellow, fg = custom_text_fg })   -- Fondo de la barra y texto base
	vim.api.nvim_set_hl(0, "SlimlinePrimary",   { bg = "#E5C07B", fg =  black_yellow, bold = true }) -- Amarillo para elementos principales
	vim.api.nvim_set_hl(0, "SlimlineSecondary", { bg = single_blue, fg = black_yellow, bold = true })   -- Azul para elementos secundarios


	if (show_transparent_bg == true) then
		-- IF U ARE LOOKING TO PUT THE BACKGROUND TRANSPARENT, APPLY THIS
		vim.api.nvim_set_hl(0, "SlimlineModeNormal",  { bg = single_blue, fg = black_yellow, bold = true })  
		vim.api.nvim_set_hl(0, "SlimlineModeInsert",  { bg = single_purple, fg = black_yellow, bold = true }) 
		vim.api.nvim_set_hl(0, "SlimlineModeVisual",  { bg = single_pink, fg = black_yellow, bold = true }) 
		vim.api.nvim_set_hl(0, "SlimlineModeCommand", { bg = single_red, fg = black_yellow, bold = true }) 
		vim.api.nvim_set_hl(0, "SlimlineModePending", { bg = most_red, fg = black_yellow, bold = true })  
	else
		-- ELSE APPLY THIS
		vim.api.nvim_set_hl(0, "SlimlineModeNormal",  { fg = single_blue, bg = black_yellow, bold = true })  
		vim.api.nvim_set_hl(0, "SlimlineModeInsert",  { fg = single_purple, bg = black_yellow, bold = true })  
		vim.api.nvim_set_hl(0, "SlimlineModeVisual",  { fg = single_pink, bg = black_yellow, bold = true }) 
		vim.api.nvim_set_hl(0, "SlimlineModeCommand", { fg = single_red, bg = black_yellow, bold = true }) 
		vim.api.nvim_set_hl(0, "SlimlineModePending", { fg = most_red, bg = black_yellow, bold = true })
	end


	-- FILL THE EMPTY SPACES (BLANKS)
	vim.opt.fillchars = {
		stl = "-",
	}
