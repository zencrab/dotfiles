return {
    {
        "williamboman/mason.nvim",

        build = ":MasonUpdate",

        lazy = true,

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

        cmd = { "Mason", "MasonUpdate" },

        keys = {
            {
                "<leader>M",
                "<cmd>Mason<CR>",
                desc = "Open Mason",
            },
        },
    },
    {
        "williamboman/mason-lspconfig.nvim",

        dependencies = {
            "williamboman/mason.nvim",
            "neovim/nvim-lspconfig",
        },

        event = "LazyFile",

        opts = {
            automatic_installation = false,
            ensure_installed = {
                "jsonls",
                "ltex",
                "lua_ls",
                "marksman",
                "pyright",
                "taplo",
                "texlab",
                "ts_ls",
                "yamlls",
            },
        },

        config = function(_, opts)
            require("mason-lspconfig").setup(opts)
            require("configs/lsp")
        end,
    },
}
