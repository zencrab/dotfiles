vim.lsp.config('lua-language-server', {

    cmd = { 'lua-language-server' },

    filetypes = { 'lua' },

    root_markers = { ".luarc.json", ".luarc.jsonc", ".luacheckrc", ".stylua.toml", "stylua.toml", "selene.toml", "selene.yml", ".git" },

    on_attach = require("modules.lsp").on_attach,

    settings = {
        Lua = {
            diagnostics = {
                globals = {
                    "Snacks",
                },
            },
            runtime = {
                version = "LuaJIT",
                path = {
                    "lua/?.lua",
                    "lua/?/init.lua",
                },
            },
            workspace = {
                checkThirdParty = false,
                library = {
                    vim.env.VIMRUNTIME,
                },
            },
            telemetry = {
                enable = false,
            }
        },
    },
})
