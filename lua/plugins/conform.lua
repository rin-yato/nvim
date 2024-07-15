return {
	"stevearc/conform.nvim",
	config = function()
		local util = require("conform.util")

		require("conform").setup({
			formatters_by_ft = {
				lau = { "stylua" },
				javascript = { "biome-check", "prettierd", "prettier" },
				typescript = { "biome-check", "prettierd", "prettier" },
				-- typescriptreact = { "biome-check", "prettier" },
				json = { "biome-check", "prettierd", "prettier" },
				yaml = { "biome-check", "prettierd", "prettier" },
				markdown = { "biome-check", "prettierd", "prettier" },
			},

			format_on_save = {
				timeout_ms = 500,
				lsp_fallback = true,
			},
		})
	end,
}
