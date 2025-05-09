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
