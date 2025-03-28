return {
    'xvzc/chezmoi.nvim',

    event = "VeryLazy",

    dependencies = {
        'nvim-lua/plenary.nvim',
        "nvim-telescope/telescope.nvim",
        "nvim-telescope/telescope-ui-select.nvim",
    },

    config = function()
        require("chezmoi").setup({})

        -- Telescope extension
        local telescope = require("telescope")
        telescope.load_extension('chezmoi')

        -- Keymaps
        local map = vim.keymap.set
        map('n', '<leader>cz', telescope.extensions.chezmoi.find_files, { desc = "Chezmoi find files" })
    end
}
