return {
	"MeanderingProgrammer/render-markdown.nvim",

	ft = { "markdown", "obsidian" },

	dependencies = {
		"nvim-treesitter/nvim-treesitter",
	},

	cmd = "RenderMarkdown",

	keys = {
		{
			"<leader>me",
			mode = "n",
			"<cmd>RenderMarkdown enable<CR>",
			desc = "Enable markdown render",
		},
		{
			"<leader>md",
			mode = "n",
			"<cmd>RenderMarkdown disable<CR>",
			desc = "Disable markdown render",
		},
		{
			"<leader>mt",
			mode = "n",
			"<cmd>RenderMarkdown toggle<CR>",
			desc = "Toggle markdown render",
		},
	},

	---@module 'render-markdown'
	---@diagnostic disable-next-line: undefined-doc-name
	---@type render.md.UserConfig
	opts = {
		file_types = { "markdown", "obsidian" },
		completitions = {
			lsp = { enabled = true },
		},
	},
}
