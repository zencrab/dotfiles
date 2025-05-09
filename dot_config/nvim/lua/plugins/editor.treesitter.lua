return {
	"nvim-treesitter/nvim-treesitter",
	name = "treesitter.nvim",

	event = "LazyFile",

	build = ":TSUpdate",

	dependencies = {
		{
			"nvim-treesitter/nvim-treesitter-textobjects",
			name = "treesitter-textobjects.nvim",
		},
	},

	config = function()
		require("nvim-treesitter.configs").setup({
			ensure_installed = {
				"bash",
				"fish",
				"html",
				"latex",
				"lua",
				"markdown",
				"markdown_inline",
				"nix",
				"python",
				"typst",
				"yaml",
			},
			auto_install = true,
			highlight = {
				enable = true,
			},
			indent = {
				enable = true,
			},
		})
	end,
}
