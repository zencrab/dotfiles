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
			show_help = "<C-h>",
		},
		floating_window_scaling_factor = 0.8,
		integrations = {
			grep_in_directory = function(directory)
				Snacks.picker.grep({
					cwd = directory,
					title = "Grep in directory",
				})
			end,
			picker_add_copy_relative_path_action = "snacks.picker",
		},
	},
}
