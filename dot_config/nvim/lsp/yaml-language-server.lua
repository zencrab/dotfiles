return {
	cmd = { "yaml-language-server", "--stdio" },

	-- Filetype
	filetypes = { "yaml", "yaml.docker-compose", "yaml.gitlab" },

	-- Root markers
	root_markers = { ".git" },

	-- Single file support
	single_file_support = true,

	-- Specific settings
	settings = {
		redhat = {
			telemetry = {
				enabled = false,
			},
		},
		yaml = {
			validate = true,
			format = {
				enable = true,
			},
			schemaStore = {
				enable = true,
			},
		},
	},
}
