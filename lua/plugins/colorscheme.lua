--------------------------------------------------------------------------------
-- Noirbuddy: A highly customizable minimalist monochromatic colorscheme
--------------------------------------------------------------------------------

return {
	{
		"jesseleite/nvim-noirbuddy",
		dependencies = {
			{ "tjdevries/colorbuddy.nvim", branch = "dev" },
		},
		lazy = true,
		priority = 1000,
		opts = {
			preset = "miami-nights",
			styles = {
				italic = true,
				undercurl = true,
				bold = false,
			},
		},
	},
	{ "LazyVim/LazyVim", opts = { colorscheme = "noirbuddy" } },
}
