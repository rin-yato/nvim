return {
	"stevearc/conform.nvim",
	config = function()
		local util = require("conform.util")

		require("conform").setup({
			formatters_by_ft = {
				lau = { "stylua" },
				javascript = { "biome", "prettierd", "prettier" },
				typescript = { "biome", "prettierd", "prettier" },
				json = { "biome", "prettierd", "prettier" },
				yaml = { "biome", "prettierd", "prettier" },
				markdown = { "biome", "prettierd", "prettier" },
			},

			format_on_save = {
				timeout_ms = 500,
				lsp_fallback = true,
			},
		})
	end,
}
