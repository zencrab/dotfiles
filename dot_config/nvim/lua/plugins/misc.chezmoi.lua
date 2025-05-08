return {
	"xvzc/chezmoi.nvim",
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
                require("configs.chezmoi"):picker()
            end,
			desc = "Chezmoi find files",
		},
	},
}
