return {
	-- Command
	cmd = { "ltex-ls" },

	-- Filetype
	filetypes = {
		"bib",
		"gitcommit",
		"markdown",
		"org",
		"plaintex",
		"rst",
		"rnoweb",
		"tex",
		"pandoc",
		"quarto",
		"rmd",
		"context",
		"html",
		"xhtml",
		"mail",
		"text",
	},

	root_markers = { ".git", ".ltexrc", ".ltex" },

	-- Specific settings
	settings = {
		ltex = {
			language = "en-GB",
			completiton = { enabled = true },
		},
	},
}
