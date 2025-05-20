-- Mode
vim.opt.showmode = true

-- Search
vim.o.hlsearch = true

-- History
vim.o.undofile = true

-- persistence.nvim recommended options (https://github.com/folke/persistence.nvim/issues/80#issuecomment-2506424807)
vim.opt.sessionoptions = { "buffers", "curdir", "tabpages", "winsize", "help", "globals", "skiprtp", "folds" }

-- -------------------------------- General ------------------------------------
-- Encoding.
vim.scriptencoding = "utf-8"
vim.opt.encoding = "utf-8"
vim.opt.fileencoding = "utf-8"

-- Set buffer for window title.
vim.opt.title = true

-- Indentation
vim.opt.autoindent = true
vim.opt.smartindent = true
vim.opt.expandtab = true
vim.opt.tabstop = 2
vim.opt.shiftwidth = 2
vim.opt.backspace = { "indent", "eol", "start" }

vim.o.cmdheight = 0 -- Set the location of Neovim CMD prompt.
vim.o.laststatus = 3 -- Show only one statusline for all windows.

-- Terminal
vim.g.have_nerd_font = true
vim.opt.termguicolors = true

-- Sync clipboard between OS and Neovim.
vim.schedule(function()
	vim.opt.clipboard = "unnamedplus"
end)

-- ---------------------------------- UI ---------------------------------------

-- Floating window border (<= Neovim 0.11)
vim.o.winborder = "rounded"

-- Conceal lines (Markdown, LaTex)
vim.opt.conceallevel = 2

-- -------------------------------- Editor -------------------------------------

-- Text wrapping
vim.opt.wrap = true

-- Line number
vim.opt.number = true
vim.opt.relativenumber = true

-- Splits
vim.opt.splitright = true
vim.opt.splitbelow = true

-- Minimal number of screen lines to keep above and below the cursor.
vim.opt.scrolloff = 10

-- --------------------------------- LSP ---------------------------------------
-- Format (https://github.com/stevearc/conform.nvim?tab=readme-ov-file#setup)
vim.o.formatexpr = "v:lua.require'conform'.formatexpr()"
