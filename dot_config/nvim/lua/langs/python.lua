local M = {}

function M.lsp()
	local settings = require("configs.lsputils")
	require("lspconfig").pyright.setup({

		-- Filetype
		filetypes = { "python" },

		-- Default settings
		on_init = settings.on_init,
		on_attach = settings.on_attach,
		capabilities = settings.capabilities,

		-- Specific pyright settings
		settings = {
			python = {
				analysis = {
					typeCheckingMode = "off",
				},
			},
		},
	})
end

local none_ls = require("null-ls")
M.sources = {
	none_ls.builtins.diagnostics.mypy.with({
		filetypes = { "python" },
	}),
	none_ls.builtins.formatting.black.with({
		filetypes = { "python" },
	}),
	none_ls.builtins.formatting.isort.with({
		filetypes = { "python" },
	}),
}

return M
