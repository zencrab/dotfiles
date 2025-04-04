return {
	"rmagatti/auto-session",

	lazy = false,

	---@module "auto-session"
	---@type AutoSession.Config
	opts = {
		suppressed_dirs = { "~/", "~/Projects", "~/Downloads", "/" },
		bypass_save_filetypes = { "alpha", "dashboard", "codecompanion" },
		session_lens = {
			load_on_setup = false,
		},
	},

	keys = {
		{ "<leader>ss", "<cmd>SessionSearch<CR>", desc = "Session search" },
		{ "<leader>sS", "<cmd>SessionSave<CR>", desc = "Save session" },
		{ "<leader>sd", "<cmd>SessionDelete<CR>", desc = "Delete session" },
		{ "<leader>st", "<cmd>SessionToggleAutoSave<CR>", desc = "Toggle session autosave" },
	},
}
