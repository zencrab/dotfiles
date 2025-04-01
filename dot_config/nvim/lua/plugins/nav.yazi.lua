return {
	"mikavilpas/yazi.nvim",

	keys = {
		{
			"<leader>ee",
			"<cmd>Yazi<cr>",
			desc = "Open file manager",
		},
		{
			"<leader>ec",
			"<cmd>Yazi cwd<cr>",
			desc = "Open file manager (cwd)",
		},
		{
			"<leader>er",
			"<cmd>Yazi toggle<cr>",
			desc = "Resume file manager last session",
		},
	},

	opts = {
		keymaps = {
			show_help = "<leader>h",
		},

		floating_window_scaling_factor = 0.8,
	},
}
