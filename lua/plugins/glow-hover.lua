return {
	"rin-yato/glow-hover",
	config = function()
		require("glow-hover").setup({
			max_width = 80,
			padding = 1,
			glow_path = "glow",
			border = "single",
			wrap = false,
		})
	end,
}
