return {
	{
		"hedyhli/outline.nvim",
		config = function()
			-- Example mapping to toggle outline
			vim.keymap.set("n", "<leader>o", "<cmd>Outline<CR>", { desc = "Toggle Outline", remap = false })

			require("outline").setup({
				-- Your setup opts here (leave empty to use defaults)
			})
		end,
	},
}
