return {
	{
		"nvimtools/none-ls.nvim",
        lazy = true,
	},
	{
		"jay-babu/mason-null-ls.nvim",

		event = "LazyFile",

		dependencies = {
			"williamboman/mason.nvim",
			"nvimtools/none-ls.nvim",
		},

		opts = {
			automatic_installation = false,
			ensure_installed = {
                -- Lua
				"stylua",
                -- Markdown
				"markdownlint",
				"prettier",
                -- Python
				"mypy",
				"black",
				"isort",
			},
		},

		config = function(_, opts)
            require("mason-null-ls").setup(opts)
			require("configs/none-ls")
		end,
	},
}
