--------------------------------------------------------------------------------
-- Lualine: Highly configurable status line
--------------------------------------------------------------------------------

return {
	"nvim-lualine/lualine.nvim",
	config = function()
		vim.g.user = "rinyato"
		vim.g.emoji = "🍀"
		local custom_sections = {
			lualine_a = { "mode" },
			lualine_b = { "filename" },
			lualine_c = {},
			lualine_x = {},
			lualine_y = { "g:emoji" },
			lualine_z = { "g:user" },
		}

		require("lualine").setup({
			options = {
				theme = "poimandres",
				icons_enabled = false,
				filetype = { colored = false },
				component_separators = { left = "", right = "" },
				section_separators = { left = "", right = "" },
				disabled_filetypes = {},
				always_divide_middle = true,
			},
			sections = custom_sections,
		})
	end,
}
