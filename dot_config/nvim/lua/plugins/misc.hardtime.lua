return {
	"m4xshen/hardtime.nvim",
	event = "LazyFile",

	opts = {
		disable_mouse = false,
		timeout = 5000,
	},

	keys = {
		{
			"<leader>ht",
			function()
				require("modules.hardtime"):toggle()
			end,
			desc = "Hardtime toggle",
		},
	},
}
