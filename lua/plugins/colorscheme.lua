return {
	{
		"projekt0n/github-nvim-theme",
		lazy = false, -- make sure we load this during startup if it is your main colorscheme
		priority = 1000, -- make sure to load this before all the other start plugins
		config = function()
			require("github-theme").setup({})

			vim.cmd("colorscheme github_light")
		end,
	},

	-- {
	-- 	"jesseleite/nvim-noirbuddy",
	-- 	dependencies = {
	-- 		{ "tjdevries/colorbuddy.nvim" },
	-- 	},
	-- 	lazy = false,
	-- 	priority = 49,
	-- 	config = function()
	-- 		require("noirbuddy").setup({
	-- 			preset = "crt-green",
	-- 			styles = {
	-- 				italic = true,
	-- 				bold = true,
	-- 				underline = true,
	-- 				undercurl = true,
	-- 			},
	-- 			colors = {
	-- 				background = "#000000",
	-- 				primary = "#00FF00",
	-- 				secondary = "#E9F5E9",
	-- 				noir_0 = "#E9F5E9",
	-- 				noir_1 = "#D5E0D5",
	-- 				noir_2 = "#9AA69A",
	-- 				noir_3 = "#808B80",
	-- 				noir_4 = "#707970",
	-- 				noir_5 = "#616861",
	-- 				noir_6 = "#4F584F",
	-- 				noir_7 = "#3D463D",
	-- 				noir_8 = "#303630",
	-- 				noir_9 = "#282E28",
	-- 			},
	-- 		})
	-- 	end,
	-- },
}
