return {
	"projekt0n/github-nvim-theme",
	"aditya-azad/candle-grey",
	"nikolvs/vim-sunbather",
	"zaki/zazen",
	"kadekillary/skull-vim",

	{
		"datsfilipe/vesper.nvim",
		lazy = false,
		priority = 1000,
		config = function()
			require('vesper').setup({
				transparent = false, -- Boolean: Sets the background to transparent
			})
			vim.cmd("colorscheme vesper")
		end
	},
	{
		'zaldih/themery.nvim',
		config = function()
			require('themery').setup({
				themes = { "vesper", "skull", "zazen", "github_dark", "sunbather", "candle-grey", "github_light" }
			})
		end
	}

}
