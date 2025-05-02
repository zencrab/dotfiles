return {
	"ecthelionvi/NeoComposer.nvim",
    lazy = true,

    enabled = false,

	dependencies = {
		"kkharji/sqlite.lua",
	},

	opts = {},

	config = function(_, opts)
		require("NeoComposer").setup(opts)
		require("telescope").load_extension("macros")
	end,
	keys = {
		{
			"<leader>ml",
			"<cmd>Telescope macros<cr>",
			desc = "List macros",
		},
        {
            "<leader>me",
            "<cmd>EditMacros<cr>",
            desc = "Edit macros",
        },
        {
            "<leader>mc",
            "<cmd>ClearNeoComposer<cr>",
            desc = "Clear macros",
        }
	},
}
