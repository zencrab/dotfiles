-- Mode
vim.opt.showmode = false

-- Search
vim.o.hlsearch = true

-- History
vim.o.undofile = true

-- auto-session recommended options.
vim.o.sessionoptions = "blank,buffers,curdir,folds,help,tabpages,winsize,winpos,terminal,localoptions"

-- -------------------------------- General ------------------------------------
vim.o.expandtab = true          -- Use spaces instead of actual TAB characters.
vim.o.tabstop = 4               -- Number of visual spaces per TAB.
vim.o.softtabstop = 4           -- Number of spaces in editing operations like <Tab>.
vim.o.shiftwidth = 4            -- Number of spaces to use for autoindent.

vim.o.cmdheight = 0             -- Set the location of Neovim CMD prompt.
vim.o.laststatus = 3            -- Show only one statusline for all windows.

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
