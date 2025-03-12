return {
	"folke/which-key.nvim",

	event = "LazyFile",

	opts = {

		win = {
			border = "single",
		},
	},

	keys = {
		{
			"<leader>?",
			function()
				require("which-key").show({ global = false })
			end,
			desc = "WhichKey show all keymaps",
		},
	},
}
