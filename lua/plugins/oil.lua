--------------------------------------------------------------------------------
-- Oil: A file explorer that you can edit like a buffer
--------------------------------------------------------------------------------

return {
	"stevearc/oil.nvim",
	keys = {
		{ "<Leader>e", vim.cmd.Oil, remap = true, desc = "Open Oil" },
	},
	opts = {
		delete_to_trash = true,
		columns = { "icon" },
		skip_confirm_for_simple_edits = true,
	},
}
