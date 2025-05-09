return {
	"catppuccin/nvim",
	name = "catppuccin.nvim",

	priority = 1000,

	opts = {
		flavour = "mocha",

		transparent_background = true,

		integrations = {
			blink_cmp = true,
			dashboard = true,
			fidget = true,
			flash = true,
			gitsigns = true,
			mason = true,
			mini = {
				enabled = true,
				indentscope_color = "blue",
			},
			snacks = {
				enabled = true,
				indent_scope_color = "blue",
			},
			which_key = true,
		},
	},

	config = function(_, opts)
		require("catppuccin").setup(opts)

		-- setup must be called before loading
		vim.cmd.colorscheme("catppuccin")
	end,
}
