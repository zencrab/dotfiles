vim.g.mapleader = " "
vim.g.maplocalleader = " "

local map = vim.keymap.set

-- escape insert mode
map("i", "jk", "<esc>", { desc = "Exit insert mode" })

-- insert mode navigation
map("i", "<C-b>", "<ESC>^i", { desc = "Move beginning of line" })
map("i", "<C-e>", "<End>", { desc = "Move end of line" })

map("i", "<C-h>", "<Left>", { desc = "Move left" })
map("i", "<C-l>", "<Right>", { desc = "Move right" })
map("i", "<C-j>", "<Down>", { desc = "Move down" })
map("i", "<C-k>", "<Up>", { desc = "Move up" })

-- window management
map({ "n", "v" }, "<leader>sh", "<cmd>split<CR>", { desc = "Split window horizontally" })
map({ "n", "v" }, "<leader>sv", "<cmd>vsplit<CR>", { desc = "Split window vertically" })

-- window navigation
map("n", "<C-h>", "<C-w>h", { desc = "Switch window left" })
map("n", "<C-l>", "<C-w>l", { desc = "Switch window right" })
map("n", "<C-j>", "<C-w>j", { desc = "Switch window down" })
map("n", "<C-k>", "<C-w>k", { desc = "Switch window up" })

-- quit highlighting (e.g. search highlights)
map("n", "<Esc>", "<cmd>noh<CR>", { desc = "Clear highlights" })

-- save file
map("n", "<C-s>", "<cmd>w<CR>", { desc = "Save file" })

-- copy
map("x", "<C-c>", '"+y', { desc = "Copy lines" })
map("n", "<C-c>", '"+yy', { desc = "Copy lines" })
map("i", "<C-c>", '<esc>"+yygi', { desc = "Copy lines" })

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

map("n", "<leader>dd", duplicate_line_or_selection, { desc = "Duplicate line" })
map("v", "<leader>dd", duplicate_line_or_selection, { desc = "Duplicate selection" })

-- ---------------------------------- LSP --------------------------------------
map("n", "<leader>li", "<cmd>checkhealth lsp<CR>", {desc = "LSP info"})
map("n", "<leader>lh", vim.lsp.buf.hover, { desc = "Hover code" })
map("n", "<leader>lr", vim.lsp.buf.rename, { desc = "Rename code" })
map("n", "<leader>ld", vim.lsp.buf.declaration, { desc = "Code go to declaration" })
map("n", "<leader>lD", vim.lsp.buf.definition, { desc = "Code go to definition" })
map("n", "<leader>lt", vim.lsp.buf.type_definition, { desc = "Code go to type definition" })
map("n", "<leader>lI", vim.lsp.buf.implementation, { desc = "Code go to implementation" })
map("n", "<leader>ls", vim.lsp.buf.signature_help, { desc = "Code show signature help" })
map("n", "<leader>lR", vim.lsp.buf.references, { desc = "Code show references" })
map({ "n", "v" }, "<leader>lc", vim.lsp.buf.code_action, { desc = "Code actions" })
map("n", "<leader>lwa", vim.lsp.buf.add_workspace_folder, { desc = "Code add workspace folder" })
map("n", "<leader>lwr", vim.lsp.buf.remove_workspace_folder, { desc = "Code remove workspace folder" })
map("n", "<leader>lwl", function()
    vim.notify(vim.inspect(vim.lsp.buf.list_workspace_folders()), vim.log.levels.INFO)
end, { desc = "Code list workspace folders" })
map("n", "<leader>lf", vim.lsp.buf.format, { desc = "Code format document" })
