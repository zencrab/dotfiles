vim.g.mapleader = " "
vim.g.maplocalleader = " "

local map = vim.keymap.set

-- escape insert mode
map("i", "jk", "<esc>", { desc = "exit insert mode" })

-- insert mode navigation
map("i", "<C-b>", "<ESC>^i", { desc = "move beginning of line" })
map("i", "<C-e>", "<End>", { desc = "move end of line" })
map("i", "<C-h>", "<Left>", { desc = "move left" })
map("i", "<C-l>", "<Right>", { desc = "move right" })
map("i", "<C-j>", "<Down>", { desc = "move down" })
map("i", "<C-k>", "<Up>", { desc = "move up" })

-- window management
map({ "n", "v" }, "<leader>sh", "<cmd>split<CR>", { desc = "Split window horizontally" })
map({ "n", "v" }, "<leader>sv", "<cmd>vsplit<CR>", { desc = "Split window vertically" })

-- window navigation
map("n", "<C-h>", "<C-w>h", { desc = "switch window left" })
map("n", "<C-l>", "<C-w>l", { desc = "switch window right" })
map("n", "<C-j>", "<C-w>j", { desc = "switch window down" })
map("n", "<C-k>", "<C-w>k", { desc = "switch window up" })

map("n", "<Esc>", "<cmd>noh<CR>", { desc = "general clear highlights" })

-- file
map("n", "<C-s>", "<cmd>w<CR>", { desc = "general save file" })

-- copy
map("x", "<C-c>", '"+y', { desc = "copy lines" })
map("n", "<C-c>", '"+yy', { desc = "copy lines" })
map("i", "<C-c>", '<esc>"+yygi', { desc = "copy lines" })

-- duplicate
local function duplicate_line_or_selection()
	local mode = vim.fn.mode()

	local start_line, end_line

	if mode == "n" then
		-- Normal mode: duplicate current line
		start_line = vim.fn.line(".")
		end_line = start_line
	elseif mode == "v" then
		-- Visual mode: duplicate selected lines
		start_line = vim.fn.line("v")
		end_line = vim.fn.line(".")

		if start_line > end_line then
			start_line, end_line = end_line, start_line
		end
	else
		return
	end

	-- Get the lines
	local lines = vim.api.nvim_buf_get_lines(0, start_line - 1, end_line, false)

	-- Append them directly
	vim.api.nvim_buf_set_lines(0, end_line, end_line, false, lines)

	if mode == "n" then
		vim.cmd("normal! j")
	end

	-- In visual mode, reselect the new block
	if mode == "v" then
		vim.cmd("normal! gv")
	end
end

vim.keymap.set("n", "<leader>dd", duplicate_line_or_selection, { desc = "Duplicate line" })
vim.keymap.set("v", "<leader>dd", duplicate_line_or_selection, { desc = "Duplicate selection" })

-- lspconfig
-- lazy.nvim
map("n", "<leader>L", "<cmd>Lazy<CR>", { desc = "Open Lazy" })
