return {
	{
		"kdheepak/lazygit.nvim",
		dependencies = { "nvim-lua/plenary.nvim" },
		lazy = true,
		keys = {
			{ "<leader>gg", ":LazyGit<cr>" },
		},
	},
}
