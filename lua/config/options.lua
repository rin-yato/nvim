--------------------------------------------------------------------------------
-- General Vim Options (that aren't related other plugins or config modules)
--------------------------------------------------------------------------------

vim.opt.tabstop = 2
vim.opt.softtabstop = 2
vim.opt.shiftwidth = 2
vim.opt.expandtab = true
vim.opt.hidden = true
vim.opt.backup = false
vim.opt.swapfile = false
vim.opt.autoread = true
vim.opt.confirm = true
vim.opt.encoding = "utf-8"
vim.opt.clipboard = "unnamed"
vim.opt.backspace = { "indent", "eol", "start" }
vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.showmode = false
vim.opt.splitbelow = true
vim.opt.splitright = true
vim.opt.fillchars = { vert = " " }
vim.opt.hlsearch = true
vim.opt.title = true
vim.opt.ignorecase = true
vim.opt.smartcase = true
vim.opt.mouse = "a"
vim.opt.scrolloff = 8
vim.opt.updatetime = 1000
vim.opt.completeopt = { "menu", "menuone", "noinsert", "noselect" }
vim.opt.wrap = false
vim.opt.autoindent = true
vim.opt.smartindent = true
vim.opt.undofile = true
vim.opt.undodir = vim.fn.stdpath("config") .. "/.undo"
vim.opt.shada = { "!", "'1000", "<50", "s10", "h" }
vim.opt.titlestring = "vim (" .. vim.fn.substitute(vim.fn.getcwd(), "^.*/", "", "") .. ")"
vim.opt.exrc = true
vim.opt.secure = true
vim.opt.iskeyword:append("-")
vim.o.sessionoptions = "blank,buffers,curdir,folds,help,tabpages,winsize,winpos,terminal,localoptions"
