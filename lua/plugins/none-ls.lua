return {
	"nvimtools/none-ls.nvim", -- configure formatters & linters
	event = { "BufReadPre", "BufNewFile" }, -- to enable uncomment this
	dependencies = {
		"jay-babu/mason-null-ls.nvim",
	},
	config = function()
		local mason_null_ls = require("mason-null-ls")

		local null_ls = require("null-ls")

		local null_ls_utils = require("null-ls.utils")

		mason_null_ls.setup({
			ensure_installed = {
				"stylua", -- lua formatter
				"prettier", -- prettier formatter
			},
		})

		-- for conciseness
		local formatting = null_ls.builtins.formatting -- to setup formatters
		local diagnostics = null_ls.builtins.diagnostics -- to setup linters

		-- to setup format on save
		local augroup = vim.api.nvim_create_augroup("LspFormatting", {})

		-- configure null_ls
		null_ls.setup({
			-- add package.json as identifier for root (for typescript monorepos)
			root_dir = null_ls_utils.root_pattern(".null-ls-root", "Makefile", ".git", "package.json"),
			-- setup formatters & linters
			sources = {
				--  to disable file types use
				--  "formatting.prettier.with({disabled_filetypes: {}})" (see null-ls docs)
				formatting.biome.with({
					condition = function(utils)
						-- only enable if root doesn't have .prettierrc
						-- return not utils.root_has_file({
						-- 	".prettierrc",
						-- 	".prettierrc.json",
						-- 	".prettierrc.yaml",
						-- 	".prettierrc.yml",
						-- 	".prettierrc.js",
						-- 	".prettierrc.cjs",
						-- 	".prettierrc.mjs",
						-- 	".prettierrc.toml",
						-- 	"prettier.config.js",
						-- 	"prettier.config.cjs",
						-- 	"prettier.config.mjs",
						-- 	"prettier.config.toml",
						-- 	".eslintrc.cjs",
						-- 	".eslintrc",
						-- 	"eslint.config.js",
						-- 	"eslint.config.mjs",
						-- })
						return utils.root_has_file({
							"biome.json",
						})
					end,

					args = {
						"check",
						"--apply-unsafe",
						"--formatter-enabled=true",
						"--organize-imports-enabled=true",
						"--skip-errors",
						"$FILENAME",
					},
				}),

				formatting.prettier.with({
					extra_filetypes = { "svelte" },
					condition = function(utils)
						return not utils.root_has_file({
							"biome.json",
						})
						-- return utils.root_has_file({
						-- 	".prettierrc",
						-- 	".prettierrc.json",
						-- 	".prettierrc.yaml",
						-- 	".prettierrc.yml",
						-- 	".prettierrc.js",
						-- 	".prettierrc.cjs",
						-- 	".prettierrc.mjs",
						-- 	".prettierrc.toml",
						-- 	"prettier.config.js",
						-- 	"prettier.config.cjs",
						-- 	"prettier.config.mjs",
						-- 	"prettier.config.toml",
						-- }) -- only enable if root has .prettierrc
					end,
				}), -- js/ts formatter
				formatting.stylua, -- lua formatter
				-- diagnostics["eslint_d"].with({ -- js/ts linter
				-- 	condition = function(utils)
				-- 		return utils.root_has_file({
				-- 			".eslintrc.js",
				-- 			".eslintrc.cjs",
				-- 			"eslint.config.js",
				-- 			"eslint.config.mjs",
				-- 		}) -- only enable if root has .eslintrc.js or .eslintrc.cjs
				-- 	end,
				-- }),
			},
			-- configure format on save
			on_attach = function(current_client, bufnr)
				if current_client.supports_method("textDocument/formatting") then
					vim.api.nvim_clear_autocmds({ group = augroup, buffer = bufnr })
					vim.api.nvim_create_autocmd("BufWritePre", {
						group = augroup,
						buffer = bufnr,
						callback = function()
							vim.lsp.buf.format({
								filter = function(client)
									--  only use null-ls for formatting instead of lsp server
									return client.name == "null-ls"
								end,
								bufnr = bufnr,
							})
						end,
					})
				end
			end,
		})
	end,
}
