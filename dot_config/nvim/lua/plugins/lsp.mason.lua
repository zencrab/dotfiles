return {
    "williamboman/mason.nvim",

    event = "VeryLazy",

    opts = {
        ui = {
            border = "rounded",

            icons = {
                package_installed = " ",
                package_pending = " ",
                package_uninstalled = " ",
            },
        },

    },

    keys = {
        {
            "<leader>M",
            "<cmd>Mason<CR>",
            desc = "Open Mason"
        }

    }
}
