return {
	"j-hui/fidget.nvim",

	lazy = false,

	opts = {
		notification = {
			window = { winblend = 0 },
			override_vim_notify = true,
		},
	},

	keys = {
		{ "<leader>fn", "<cmd>Telescope fidget<cr>", desc = "Find notifications" },
	},
}
