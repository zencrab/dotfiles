return {
	cmd = { "lua-language-server" },
	root_markers = { ".luarc.json" },

	-- Filetype
	filetypes = { "lua" },

	-- Specific settings
	settings = {
		Lua = {
			workspace = {
				checkThirdParty = false,
				library = vim.api.nvim_get_runtime_file("", true),
			},
			completion = {
				callSnippet = "Replace",
			},
			diagnostics = {

				globals = { "vim" },
			},
		},
	},
}
