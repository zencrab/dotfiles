return {

    "nvim-treesitter/nvim-treesitter",

    event = "LazyFile",

    build = ":TSUpdate",

    dependencies = {
        "nvim-treesitter/nvim-treesitter-textobjects",
    },

    config = function()
        require("nvim-treesitter.configs").setup({
            ensure_installed = {
                "bash",
                "fish",
                "html",
                "latex",
                "lua",
                "markdown",
                "markdown_inline",
                "python",
                "typst",
                "yaml",
            },
            auto_install = true,
            highlight = {
                enable = true,
            },
            indent = {
                enable = true,
            },
        })

        vim.treesitter.language.register("markdown", "obsidian")
        vim.treesitter.language.register("markdown_inline", "obsidian")
    end,
}
