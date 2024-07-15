--------------------------------------------------------------------------------
-- Harpoon: Get to where you want with the fewest keystrokes
--------------------------------------------------------------------------------

return {

	"ThePrimeagen/harpoon",
	branch = "harpoon2",
	lazy = true,
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
				harpoon:list():add()
			end,
			desc = "Harpoon Append File",
		},
		{
			"<Leader>hv",
			function()
				local harpoon = require("harpoon")
				harpoon:list():select(1)
			end,
			desc = "Harpoon Select File 1",
		},
		{
			"<Leader>hb",
			function()
				local harpoon = require("harpoon")
				harpoon:list():select(2)
			end,
			desc = "Harpoon Select File 2",
		},
		{
			"<Leader>hn",
			function()
				local harpoon = require("harpoon")
				harpoon:list():select(3)
			end,
			desc = "Harpoon Select File 3",
		},
	},
}
