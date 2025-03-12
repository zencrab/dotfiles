local M = {}

M.filetypes = { "markdown", "obsidian" }

function M.lsp()
	local settings = require("configs.lsputils")
	require("lspconfig").marksman.setup({
		filetypes = M.filetypes,

		on_init = settings.on_init,
		on_attach = settings.on_attach,
		capabilities = settings.capabilities,
	})

	require("lspconfig").ltex.setup({
		filetypes = { "markdown", "obsidian", "tex", "latex" },

		on_init = settings.on_init,
		capabilities = settings.capabilities,
		on_attach = settings.on_attach,

		settings = {
			ltex = {
				language = "en-GB",
			},
		},
	})
end

local none_ls = require("null-ls")
M.sources = {
	-- Obsidian.md
	none_ls.builtins.diagnostics.markdownlint.with({
		filetypes = M.filetypes,
		extra_args = { "--disable", "MD041", "MD013" },
	}),
	none_ls.builtins.formatting.prettier.with({
		filetypes = M.filetypes,
	}),
}
return M
