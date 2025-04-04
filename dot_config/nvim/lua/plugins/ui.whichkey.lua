return {
	"folke/which-key.nvim",

	event = "VeryLazy",

	opts = {
		win = {
			border = "single",
		},
	},

	keys = {
		{
			"<leader>?",
            mode = "n",
			function()
				require("which-key").show({ global = false })
			end,
			desc = "WhichKey show all keymaps",
		},
	},
}
