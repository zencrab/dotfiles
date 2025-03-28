return {
    cmd = { "ltex-ls" },
    root_markers = { ".git", ".ltexrc", ".ltex" },

    -- Filetype
    filetypes = { "markdown", "tex", "text", "rst" },

    -- Specific settings
    settings = {
        ltex = {
            language = "en-GB",
            completiton = { enabled = true },
        }
    }
}
