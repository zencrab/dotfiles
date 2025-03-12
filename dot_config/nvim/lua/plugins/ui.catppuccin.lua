return {
	"catppuccin/nvim",
	name = "catppuccin.nvim",

	priority = 1000,

	config = function()
		require("catppuccin").setup({
			transparent_background = true,

			integrations = {
                copilot_vim = true,
				dashboard = true,
                fidget = true,
				gitsigns = true,
				mason = true,
				notify = true,
				noice = true,
				telescope = {
					enabled = true,
				},
				which_key = true,
			},
		})

		-- setup must be called before loading
		vim.cmd.colorscheme("catppuccin")
	end,
}
