local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"

if not vim.loop.fs_stat(lazypath) then
	vim.fn.system({
		"git",
		"clone",
		"--filter=blob:none",
		"https://github.com/folke/lazy.nvim.git",
		"--branch=stable", -- latest stable release
		lazypath,
	})
end

vim.opt.rtp:prepend(lazypath)

require("config.options")
require("config.keymaps")
require("config.autocmds")

require("lazy").setup("plugins")

---- Neovide config ----

-- Font
vim.o.guifont = "Cascadia Code:h24:#e-subpixelantialias"
vim.opt.linespace = 14

-- Padding
vim.g.neovide_padding_top = 38
vim.g.neovide_padding_right = 24
vim.g.neovide_padding_bottom = 0
vim.g.neovide_padding_left = 24

vim.g.neovide_refresh_rate = 90

vim.g.neovide_floating_shadow = false
vim.g.neovide_show_border = true

vim.g.neovide_text_gamma = 0.8
vim.g.neovide_text_contrast = 0.1
