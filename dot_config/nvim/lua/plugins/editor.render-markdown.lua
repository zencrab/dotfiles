return {
	"MeanderingProgrammer/render-markdown.nvim",

	ft = { "markdown", "codecompanion" },

	dependencies = {
		"nvim-treesitter/nvim-treesitter",
		"echasnovski/mini.icons",
	},

	---@module 'render-markdown'
	---@type render.md.UserConfig
	opts = {
		completions = {
			blink = { enabled = true },
		},
	},
}
