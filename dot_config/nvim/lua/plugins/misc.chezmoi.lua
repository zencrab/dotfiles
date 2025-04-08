return {
    "xvzc/chezmoi.nvim",

    opts = {

    },

    keys = {
        {
            "<leader>cz",
            mode = "n",
            function()
                require("telescope").extensions.chezmoi.find_files()
            end,
            desc = "Chezmoi find files",
        },
    },
}
