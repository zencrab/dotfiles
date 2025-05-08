return {
	"j-hui/fidget.nvim",
    lazy = false,

	opts = {
		notification = {
			window = { 
                winblend = 0, 
            },
            override_vim_notify = true,
		},
	},

	keys = {
		{ 
            "<leader>nh", 
            "<Cmd>Fidget history<Cr>",
            desc = "Notification history", 
        },
		{ 
            "<leader>nc", 
            "<Cmd>Fidget clear<Cr>",
            desc = "Notification clear", 
        },
        {
            "<leader>nC",
            "<Cmd>Fidget clear_history<Cr>",
            desc = "Notification clear history",
        },
        {
            "<leader>nT",
            "<Cmd>Fidget suppress<Cr>",
            desc = "Notification toggle",
        },
        {
            "<leader>nt",
            "<Cmd>Fidget lsp_suppress<Cr>",
            desc = "Notification LSP toggle",
        },

	},
}
