vim.lsp.config("pyright", {
	-- Specific settings
	settings = {
		python = {
			analysis = {
				diagnosticMode = "workspace",
				typeCheckingMode = "basic",
			},
			telemetry = {
				enable = false,
			},
		},
	},
})
