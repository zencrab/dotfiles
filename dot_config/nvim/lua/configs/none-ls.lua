local none_ls = require("null-ls")

none_ls.setup({
    sources = {
        -- Lua
        none_ls.builtins.formatting.stylua.with({
            filetypes = { "lua" },
        }),
        -- Markdown
        none_ls.builtins.diagnostics.markdownlint.with({
            filetypes = { "markdown" },
            extra_args = { "--disable", "MD041", "MD013" },
        }),
        none_ls.builtins.formatting.prettier.with({
            filetypes = { "markdown" },
        }),
        -- Python
        none_ls.builtins.diagnostics.mypy.with({
            filetypes = { "python" },
        }),
        none_ls.builtins.formatting.black.with({
            filetypes = { "python" },
        }),
        none_ls.builtins.formatting.isort.with({
            filetypes = { "python" },
        }),
    },
})
