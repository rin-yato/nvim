--------------------------------------------------------------------------------
-- Harpoon: Get to where you want with the fewest keystrokes
--------------------------------------------------------------------------------

return {
	"ThePrimeagen/harpoon",
	branch = "harpoon2",
	dependencies = {
		"nvim-lua/plenary.nvim",
	},
	keys = {
		{
			"<Leader>hh",
			function()
				local harpoon = require("harpoon")
				harpoon.ui:toggle_quick_menu(harpoon:list())
			end,
			desc = "Harpoon Menu",
		},
		{
			"<Leader>ha",
			function()
				local harpoon = require("harpoon")
				harpoon:list():append()
			end,
			desc = "Harpoon Append File",
		},
		{
			"<Leader>hj",
			function()
				local harpoon = require("harpoon")
				harpoon:list():select(1)
			end,
			desc = "Harpoon Select File 1",
		},
		{
			"<Leader>hk",
			function()
				local harpoon = require("harpoon")
				harpoon:list():select(2)
			end,
			desc = "Harpoon Select File 2",
		},
		{
			"<Leader>hl",
			function()
				local harpoon = require("harpoon")
				harpoon:list():select(3)
			end,
			desc = "Harpoon Select File 3",
		},
		{
			"<Leader>h;",
			function()
				local harpoon = require("harpoon")
				harpoon:list():select(4)
			end,
			desc = "Harpoon Select File 4",
		},
	},
}