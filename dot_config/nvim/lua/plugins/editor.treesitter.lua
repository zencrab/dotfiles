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

	opts = {
		auto_install = true,
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
		highlight = { enable = true },
		indent = { enable = true },
	},
	config = function(_, opts)
		require("nvim-treesitter.configs").setup(opts)
	end,
}
