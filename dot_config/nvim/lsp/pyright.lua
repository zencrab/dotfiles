vim.lsp.config("pyright", {
	-- Server settings
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
