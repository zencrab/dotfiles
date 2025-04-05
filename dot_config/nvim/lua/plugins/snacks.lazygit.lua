return {
	"folke/snacks.nvim",

	lazy = false,

	---@type snacks.Config
	opts = {
		lazygit = {
			enabled = true,
			theme_path = vim.fs.normalize(vim.fn.stdpath("cache") .. "/lazygit-theme.yml"),
		},
	},

	keys = {
		{
			"<leader>G",
			function()
				require("snacks").lazygit()
			end,
			desc = "Open Lazygit",
		},
	},
}
