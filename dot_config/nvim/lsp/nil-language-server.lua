vim.lsp.config("nil-language-server", {

    -- Command and arguments to start the server.
    cmd = { 'nil' },

    -- Filetypes to automatically attach to.
    filetypes = { 'nix' },

    -- Indicate the parent direcotry of the workspace.
    root_markers = { "flake.nix", ".git" },

    -- Server settings.
    settings = {
        ["nil"] = {
            telemetry = {
                enable = false,
            },
        },
    },
})
