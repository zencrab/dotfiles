return {
	"xvzc/chezmoi.nvim",
	event = "VeryLazy",

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
				require("telescope").extensions.chezmoi.find_files()
			end,
			desc = "Chezmoi find files",
		},
	},
}
