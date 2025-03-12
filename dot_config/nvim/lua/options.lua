-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options below
vim.cmd("set expandtab")
vim.cmd("set tabstop=4")
vim.cmd("set softtabstop=4")
vim.cmd("set shiftwidth=4")
vim.cmd(":set cmdheight=0")

-- Sync clipboard between OS and Neovim.
vim.schedule(function()
	vim.opt.clipboard = "unnamedplus"
end)

-- Terminal
vim.g.have_nerd_font = true
vim.opt.termguicolors = true

-- Line number
vim.opt.number = true
vim.opt.relativenumber = true

-- Mode
vim.opt.showmode = false

-- Splits
vim.opt.splitright = true
vim.opt.splitbelow = true

-- Minimal number of screen lines to keep above and below the cursor.
vim.opt.scrolloff = 10

-- Search
vim.o.hlsearch = true

-- History
vim.o.undofile = true

-- Text
vim.opt.wrap = true

-- auto-session recommended options
vim.o.sessionoptions = "blank,buffers,curdir,folds,help,tabpages,winsize,winpos,terminal,localoptions"

-- Markdown
vim.opt.conceallevel = 2

