return {
	"echasnovski/mini.nvim",
	version = "*",
	config = function()
		require("mini.surround").setup()
		require("mini.ai").setup()
		require("mini.comment").setup()
		-- require("mini.completion").setup()
	end,
}
