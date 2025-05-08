vim.lsp.config("nil-language-server", {

    -- Command and arguments to start the server.
    cmd = { 'nil' },

    -- Filetypes to automatically attach to.
    filetypes = { 'nix' },

    -- Indicate the parent direcotry of the workspace.
    root_markers = { "flake.nix", ".git" },

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
