--------------------------------------------------------------------------------
-- General Keymaps (that aren't related other plugins or config modules)
--------------------------------------------------------------------------------

-- Map leader keys
vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- Write and quit like a monster
vim.keymap.set("n", "<Leader>w", function()
	vim.cmd("update")
end)
vim.keymap.set("n", "<Leader>q", function()
	vim.cmd("q")
end)

-- Exit insert mode
vim.keymap.set("i", "jj", "<Esc>")

-- Exit terminal mode
vim.keymap.set("t", "<Esc>", "<C-\\><C-n>")

-- Edit the alternate / previously edited file
vim.keymap.set("n", "<Leader>a", "<C-^>")

-- Cycle through windows
vim.keymap.set("n", "<Tab>", "<C-w>w")
vim.keymap.set("n", "<S-Tab>", "<C-w>W")

-- Make window only window
vim.keymap.set("n", "<Leader>O", "<C-w>o")

-- Vertical split
vim.keymap.set("n", "<Leader>vs", vim.cmd.vsplit, { silent = true })
vim.keymap.set("n", "<Leader>hs", vim.cmd.split, { silent = true })

-- Quicker macro playback
vim.keymap.set("n", "Q", "@qj")
vim.keymap.set("x", "Q", ":norm @q<CR>")

-- Move line(s) up and down
vim.keymap.set("n", "<C-j>", ":m .+1<CR>==")
vim.keymap.set("n", "<C-k>", ":m .-2<CR>==")
vim.keymap.set("i", "<C-j>", "<Esc>:m .+1<CR>==gi")
vim.keymap.set("i", "<C-k>", "<Esc>:m .-2<CR>==gi")
vim.keymap.set("v", "<C-j>", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "<C-k>", ":m '<-2<CR>gv=gv")

-- Quickly append semicolon or comma
vim.keymap.set({ "n" }, ";;", "<Esc>A;<Esc>")
vim.keymap.set({ "n" }, ",,", "<Esc>A,<Esc>")

-- Keep visual selection when indenting
vim.keymap.set("x", ">", ">gv")
vim.keymap.set("x", "<", "<gv")

-- Clear search highlighting
vim.keymap.set("n", "<Leader>.", vim.cmd.nohlsearch, { silent = true })

-- Increment/decrement numbers holding shift-`+/-` keys instead of ctrl-`a/x`
vim.keymap.set("n", "+", "<C-a>")
vim.keymap.set("n", "_", "<C-x>")
vim.keymap.set("v", "+", "<C-a>")
vim.keymap.set("v", "_", "<C-x>")

-- Open in finder
vim.keymap.set("n", "<Leader><Leader>o", ":!open $PWD<CR><CR>", { silent = true })

-- Move between open splits
vim.keymap.set("n", "H", "<C-w>h")
vim.keymap.set("n", "J", "<C-w>j")
vim.keymap.set("n", "K", "<C-w>k")
vim.keymap.set("n", "L", "<C-w>l")

-- Window and split
vim.keymap.set("n", "<Leader>wd", "<C-w>c")
