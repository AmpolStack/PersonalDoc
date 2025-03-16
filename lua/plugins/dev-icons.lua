return
{
	"nvim-tree/nvim-web-devicons",
	config = function()
		require("nvim-web-devicons").setup{
			default = true;
			strict = true;
			color_icons = true;
			override_by_extension = {
				["ts"] = {
					icon = "󰛦",
					color = "#578FCA",
					name = "typescript"
				},
				["js"] = {
					icon = "",
					color = "#fcdd86",
					name = "javascript"
				},
				["cs"] = {
					icon = "󰌛",
					color = "#8063a8",
					name = "csharp"
				}
			};
		}
	end
}

