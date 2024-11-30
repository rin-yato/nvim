return {
	"stevearc/conform.nvim",
	config = function()
		local util = require("conform.util")

		require("conform").setup({
			formatters = {
				biome = {
					inherit = false,
					command = util.from_node_modules("biome"),
					stdin = true,
					args = { "check", "--write", "--unsafe", "--stdin-file-path", "$FILENAME" },
					require_cwd = true,
					cwd = util.root_file({
						"biome.json",
						"biome.jsonc",
					})
				}
			},

			formatters_by_ft = {
				lau = { "stylua" },
				javascript = { "biome", "prettierd", stop_after_first = true },
				typescript = { "biome", "prettierd", stop_after_first = true },
				typescriptreact = { "biome", "prettierd", stop_after_first = true },
				javascriptreact = { "biome", "prettierd", stop_after_first = true },
				json = { "biome", "prettierd", stop_after_first = true },
				yaml = { "biome", "prettierd", stop_after_first = true },
				markdown = { "biome", "prettierd", stop_after_first = true }
			},

			format_on_save = {
				timeout_ms = 500,
				lsp_format = "fallback"
			},
		})
	end,
}
