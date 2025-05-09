return {
	"xvzc/chezmoi.nvim",

	dependencies = {
		"nvim-lua/plenary.nvim",
	},

	event = "ChezmoiFile",

	opts = {
		edit = {
			watch = true,
		},
		notification = {
			on_open = false,
			on_apply = false,
			on_watch = false,
		},
	},

	keys = {
		{
			"<leader>cz",
			mode = "n",
			function()
				require("modules.chezmoi"):picker()
			end,
			desc = "Chezmoi find files",
		},
	},
}
