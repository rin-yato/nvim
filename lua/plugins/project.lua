return {
	"ahmedkhalf/project.nvim",
	opts = {
		manual_mode = false,
	},
	event = "VeryLazy",
	config = function(_, opts)
		opts.detection_methods = { "pattern", "lsp", "cwd" }
		opts.patterns = { ".git", "package.json", "Cargo.toml" }
		require("project_nvim").setup(opts)
		require("lazyvim.util").on_load("telescope.nvim", function()
			require("telescope").load_extension("projects")
		end)
	end,
	keys = {
		{ "<leader>fp", "<Cmd>Telescope projects<CR>", desc = "Projects" },
	},
}
