return {
	"goolord/alpha-nvim",
	config = function()
		local alpha = require("alpha")
		local dashboard = require("alpha.themes.dashboard")
		local button = dashboard.button

		local logos = require("plugins.logos")
		dashboard.section.header ={
			type = "text",
			val = logos.kraken,
			opts = { hl = "MyLogoHighlight", position = "center" }
		}

		dashboard.section.subtitle = {
			type = "text",
			val = "-󰽭 AMAPOLA PROFILE 󰽭-",
			opts = { hl = "AlphaSubtitle", position = "center" },
		}

		dashboard.section.buttons = {
			type = "group",
			val = {
				button("    e    ", "󰉋  File Explorer", ":Telescope find_files<CR>"),
				{ type = "padding" , val = 1},
				button("    f    ", "  New File", ":ene <BAR> startinsert <CR>"),
				{ type = "padding", val = 1},
				button("    w    ", "  Recent File", ":Telescope oldfiles<CR>"),
				{ type = "padding", val = 1},
				button("    c    ", "  Go To Nvim Config", ":e ~\\AppData\\Local\\nvim <CR>"),
				{ type = "padding", val = 1},
				button("    a    ", "󱚟  Got To Alacritty Config", ":e ~\\AppData\\Roaming\\alacritty <CR>"),
				{ type = "padding", val= 1},
				button("    q    ", "󰩈  Quit", ":qa<cr>"),
			},
			opts = { hl = "AlphaButtons", hl_shortcut = "AlphaShortcut"}
		}

		for _, btn in ipairs(dashboard.section.buttons.val) do
  			if btn.opts then
    			btn.opts.hl = "AlphaButtons"
    			btn.opts.hl_shortcut = "AlphaShortcut"
  			end
		end



		dashboard.section.footer = {
			type = "text",
  			val = "",
			opts = {
    				position = "center",
    				hl = "AlphaFooter",
			},
		}

		dashboard.config.layout = {
  			{ type = "padding", val = 1 },
  			dashboard.section.header,
			{type = "padding", val = 1 },
			dashboard.section.subtitle,
  			{ type = "padding", val = 1 },
			dashboard.section.buttons,
  			{ type = "padding", val = 2 },
		  	dashboard.section.footer,
  			{ type = "padding", val = 1 },
		}

		local opts = {
			layout = dashboard.config.layout,
			opts = {
				noautocmd = true,
				margin = 5
			}
		}

		alpha.setup(opts)
	end,
}
