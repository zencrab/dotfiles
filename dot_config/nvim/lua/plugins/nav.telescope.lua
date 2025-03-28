return {
    "nvim-telescope/telescope.nvim",

    event = "VeryLazy",

    dependencies = {
        {
            "nvim-lua/plenary.nvim",
        },
        {
            "nvim-telescope/telescope-fzf-native.nvim",
            build = "cmake -S. -Bbuild -DCMAKE_BUILD_TYPE=Release && cmake --build build --config Release",
        },
        {
            "nvim-telescope/telescope-ui-select.nvim",
        },
    },

    config = function()
        require("telescope").setup({
            defaults = {
                layout_strategy = "horizontal",
                sorting_strategy = "ascending",
                layout_config = { prompt_position = "top" },
                winblend = 0,
            },
            extensions = {
                fzf = {
                    fuzzy = true,
                    override_generic_sorter = true,
                    override_file_sorter = true,
                    case_mode = "smart_case",
                },
                ["ui-select"] = {
                    require("telescope.themes").get_dropdown({}),
                },
            },
        })
        require("telescope").load_extension("fzf")
        require("telescope").load_extension("ui-select")
        require("telescope").load_extension("fidget")

        -- Keymaps
        local map = vim.keymap.set
        map("n", "<leader>ff", "<cmd>Telescope find_files<cr>", { desc = "Telescope find files" })
        map(
            "n",
            "<leader>fa",
            "<cmd>Telescope find_files follow=true no_ignore=true hidden=true<cr>",
            { desc = "Telescope find all files" }
        )
        map("n", "<leader>fg", "<cmd>Telescope live_grep<cr>", { desc = "Telescope live grep" })
        map("n", "<leader>fb", "<cmd>Telescope buffers<cr>", { desc = "Telescope find buffers" })
        map("n", "<leader>fh", "<cmd>Telescope help_tags<cr>", { desc = "Telescope help page" })
        map("n", "<leader>fm", "<cmd>Telescope marks<cr>", { desc = "Telescope find marks" })
        map("n", "<leader>fo", "<cmd>Telescope oldfiles<cr>", { desc = "Telescope find oldfiles" })
        map(
            "n",
            "<leader>fz",
            "<cmd>Telescope current_buffer_fuzzy_find<cr>",
            { desc = "Telescope find in current buffer" }
        )
        map("n", "<leader>fc", "<cmd>Telescope git_commits<cr>", { desc = "Telescope git commits" })
        map("n", "<leader>fs", "<cmd>Telescope git_status<cr>", { desc = "Telescope git status" })

        -- fidget.nvim
        map("n", "<leader>fn", "<cmd>Telescope fidget<cr>", { desc = "Telescope notifications" })
    end,
}
