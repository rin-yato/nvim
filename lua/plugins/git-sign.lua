--------------------------------------------------------------------------------
-- Gitsigns: Git gutter, hunk navigation, blaming, etc.
--------------------------------------------------------------------------------

return {
	"lewis6991/gitsigns.nvim",
	opts = {
		signs = {
			add = { text = "▎" },
			change = { text = "▎" },
			untracked = { text = "▎" },
		},
	},
}
