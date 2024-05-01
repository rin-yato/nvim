return {
	{
		"zbirenbaum/copilot.lua",
		cmd = "Copilot",
		lazy = true,
		build = ":Copilot auth",
		event = "InsertEnter",
		config = function()
			require("copilot").setup({
				panel = {
					enabled = true,
					auto_refresh = true,
				},
				suggestion = {
					enabled = true,
					auto_trigger = true,
					keymap = {
						accept = "<Tab>",
					},
				},
			})
		end,
	},
}
