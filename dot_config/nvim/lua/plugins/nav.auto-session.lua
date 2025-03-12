return {
	"rmagatti/auto-session",

	lazy = false,

	opts = {
		suppressed_dirs = { "~/", "~/Projects", "~/Downloads", "/" },
        bypass_save_filetypes = { 'alpha', 'dashboard' },
		session_lens = {
			load_on_setup = true,
			theme_conf = {
				border = true,
			},
		},
	},
	keys = {
		{ "<leader>ss", "<cmd>SessionSearch<CR>", desc = "Session search" },
		{ "<leader>sS", "<cmd>SessionSave<CR>", desc = "Save session" },
		{ "<leader>sd", "<cmd>SessionDelete<CR>", desc = "Delete session" },
		{ "<leader>st", "<cmd>SessionToggleAutoSave<CR>", desc = "Toggle session autosave" },
	},
}
