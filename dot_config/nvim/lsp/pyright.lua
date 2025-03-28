return {
    cmd = { 'pyright-langserver', '--stdio' },
    root_markers = { 'pyproject.toml', 'setup.py', 'setup.cfg', 'requirements.txt', '.git' },

    -- Filetype
    filetypes = { "python" },

    -- Specific settings
    settings = {
        python = {
            analysis = {
                diagnosticMode = "workspace",
                typeCheckingMode = "basic",
            },
        },
    },

}
