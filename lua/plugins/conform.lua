return {
	"stevearc/conform.nvim",
	config = function()
		local util = require("conform.util")

		require("conform").setup({
			formatters_by_ft = {
				lau = { "stylua" },
				javascript = { "biome-check", "prettierd", "prettier" },
				["*"] = { "codespell" },
			},

			format_on_save = {
				timeout_ms = 500,
				lsp_fallback = true,
			},
		})
	end,
}
