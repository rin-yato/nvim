return {
	{
		"hrsh7th/nvim-cmp",
		event = "InsertEnter",
		lazy = true,
		dependencies = {
			-- "hrsh7th/cmp-buffer", -- source for text in buffer
			"hrsh7th/cmp-path", -- source for file system paths
			"L3MON4D3/LuaSnip", -- snippet engine
			-- "saadparwaiz1/cmp_luasnip", -- for autocompletion
			-- "rafamadriz/friendly-snippets", -- useful snippets
			"onsails/lspkind.nvim", -- vs-code like pictograms
		},
		config = function()
			local cmp = require("cmp")

			local luasnip = require("luasnip")

			local lspkind = require("lspkind")

			-- loads vscode style snippets from installed plugins (e.g. friendly-snippets)
			-- require("luasnip.loaders.from_vscode").lazy_load()

			cmp.setup({
				completion = {
					completeopt = "menu,menuone,preview,noselect",
				},
				snippet = { -- configure how nvim-cmp interacts with snippet engine
					expand = function(args)
						luasnip.lsp_expand(args.body)
					end,
				},
				window = {
					completion = cmp.config.window.bordered(),
					documentation = cmp.config.window.bordered({
						winhighlight = "Normal:Normal,FloatBorder:FloatBorder,CursorLine:CursorLineBG,Search:None",
					}),
				},
				mapping = cmp.mapping.preset.insert({
					["<C-k>"] = cmp.mapping.select_prev_item(), -- previous suggestion
					["<C-j>"] = cmp.mapping.select_next_item(), -- next suggestion
					["<C-b>"] = cmp.mapping.scroll_docs(-4),
					["<C-f>"] = cmp.mapping.scroll_docs(4),
					["<C-Space>"] = cmp.mapping.complete(), -- show completion suggestions
					["<C-e>"] = cmp.mapping.abort(), -- close completion window
					["<CR>"] = cmp.mapping.confirm({ select = true }),
				}),
				-- sources for autocompletion
				sources = cmp.config.sources({
					{ name = "nvim_lsp" },
					-- { name = "luasnip" }, -- snippets
					-- { name = "buffer" }, -- text within current buffer
					{ name = "path" }, -- file system paths
				}),
				-- configure lspkind for vs-code like pictograms in completion menu
				formatting = {
					fields = { "kind", "abbr" },
					format = lspkind.cmp_format({
						ellipsis_char = "...",
						mode = "symbol",
						before = function(_, vim_item)
							vim_item.menu = ({ nvim_lsp = "" })["clangd"]
							return vim_item
						end,
					}),
				},
			})
		end,
	},

	{
		"ray-x/lsp_signature.nvim",
		event = "VeryLazy",
		opts = {},
		config = function(_, opts)
			require("lsp_signature").setup(opts)
		end,
	},
}
