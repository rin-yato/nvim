--------------------------------------------------------------------------------
-- Lualine: Highly configurable status line
--------------------------------------------------------------------------------

return {
	"nvim-lualine/lualine.nvim",
	config = function()
		vim.g.user = "rinyato🍀"
		local custom_sections = {
			lualine_a = { "mode" },
			lualine_b = { "branch" },
			lualine_c = {},
			lualine_x = {},
			lualine_y = { { "filename", path = 4 } },
			lualine_z = { "g:user" },
		}

		require("lualine").setup({
			options = {
				-- theme = "poimandres",
				icons_enabled = false,
				filetype = { colored = true },
				component_separators = { left = "", right = "" },
				section_separators = { left = "", right = "" },
				disabled_filetypes = {},
				always_divide_middle = true,
			},
			sections = custom_sections,
		})
	end,
}
