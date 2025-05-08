vim.lsp.config('lua-language-server', {

    -- Command and arguments to start the server.
    cmd = { 'lua-language-server' },

    -- Filetypes to automatically attach to.
    filetypes = { 'lua' },

    -- Indicate the parent direcotry of the workspace.
    root_markers = { ".luarc.json", ".luarc.jsonc", ".luacheckrc", ".stylua.toml", "stylua.toml", "selene.toml", "selene.yml", ".git" },

    -- Server settings.
    settings = {
        Lua = {
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
        },
    },
})
