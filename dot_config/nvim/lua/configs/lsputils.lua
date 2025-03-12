local M = {}

-- export on_attach & capabilities
M.on_attach = function(_, bufnr)
	local function opts(desc)
		return { buffer = bufnr, desc = "LSP " .. desc }
	end
end

-- disable semanticTokens
M.on_init = function(client, _)
end

M.capabilities = require("cmp_nvim_lsp").default_capabilities()

-- function M.is_obsidian_file(bufnr)
--     local filepath = vim.api.nvim_buf_get_name(bufnr)
--     local dir = vim.fn.fnamemodify(filepath, ":h")
--
--     while dir ~= "" do
--         if vim.fn.isdirectory(dir .. "/.obsidian") == 1 then
--             return true
--         end
--         local parent = vim.fn.fnamemodify(dir, ":h")
--         if parent == dir then
--             break
--         end
--         dir = parent
--     end
--
--     return false
-- end


return M
