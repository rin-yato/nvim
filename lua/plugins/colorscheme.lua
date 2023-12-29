--------------------------------------------------------------------------------
-- Noirbuddy: A highly customizable minimalist monochromatic colorscheme
--------------------------------------------------------------------------------

return {
	"jesseleite/nvim-noirbuddy",
	dependencies = {
		{ "tjdevries/colorbuddy.nvim", branch = "dev" },
	},
	lazy = false,
	priority = 1000,
	opts = {
		preset = "miami-nights",
		colors = {
			background = "#000000",
		},
		styles = {
			italic = true,
			undercurl = true,
			bold = false,
		},
	},
}
