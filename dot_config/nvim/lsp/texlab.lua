return {
	cmd = { "texlab" },
	root_markers = {
		".git",
		".latexmkrc",
		".texlabroot",
		"texlabroot",
		"Tectonic.toml",
	},
	-- Filetype
	filetypes = { "tex", "plaintex", "bib" },

	-- Specific settings
	settings = {
		texlab = {
			rootDirectory = nil,
			build = {
				executable = "latexmk",
				args = { "-pdf", "-interaction=nonstopmode", "-synctex=1", "%f" },
				onSave = false,
				forwardSearchAfter = false,
			},
			forwardSearch = {
				executable = nil,
				args = {},
			},
			chktex = {
				onOpenAndSave = false,
				onEdit = false,
			},
			diagnosticsDelay = 300,
			latexFormatter = "latexindent",
			latexindent = {
				["local"] = nil, -- local is a reserved keyword
				modifyLineBreaks = false,
				formatCommand = "latexindent -l -m -c -y=defaultIndent:'  ',lineLength:80",
			},
			bibtexFormatter = "texlab",
			formatterLineLength = 80,
		},
	},
}
