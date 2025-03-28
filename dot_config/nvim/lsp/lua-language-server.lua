return {
    cmd = { "lua-language-server" },
    root_markers = { ".luarc.json" },

    -- Filetype
    filetypes = { "lua" },

    -- Specific settings
    settings = {
        Lua = {
            diagnostics = {
                globals = { "vim" }
            }
        }
    }
}
