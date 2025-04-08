return {
	"j-hui/fidget.nvim",

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
