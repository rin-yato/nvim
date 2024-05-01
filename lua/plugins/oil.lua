--------------------------------------------------------------------------------
-- Oil: A file explorer that you can edit like a buffer
--------------------------------------------------------------------------------

return {
	"stevearc/oil.nvim",
	lazy = true,
	keys = {
		{ "<Leader>e", vim.cmd.Oil, remap = true, desc = "Open Oil" },
	},
	opts = {
		columns = { "icon" },

		delete_to_trash = true,
		skip_confirm_for_simple_edits = true,
	},
}
