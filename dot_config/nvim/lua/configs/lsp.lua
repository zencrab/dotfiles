-- Virtual lines
vim.diagnostic.config({
    virtual_lines = {
        current_line = true,
    },
})

vim.lsp.enable("lua-language-server")
vim.lsp.enable("pyright")
vim.lsp.enable("marksman")
vim.lsp.enable("ltex")

