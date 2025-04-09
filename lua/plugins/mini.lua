return {
	"echasnovski/mini.nvim",
	version = "*",
	config = function()
		require("mini.surround").setup({
			mappings = {
				add = "gsa",
				delete = "gsd",
				find = "gsf",
				find_left = "gsF",
				highlight = "gsh",
				replace = "gsr",
			},
		})                               -- surround text objects

		require("mini.sessions").setup() -- save and restore sessions

		require("mini.extra").setup()    -- extra text objects, hipatterns, etc

		require("mini.hipatterns").setup() -- colorize hex, rgb, etc
	end,
}
