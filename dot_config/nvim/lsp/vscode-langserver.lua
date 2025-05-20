local capabilities = vim.lsp.protocol.make_client_capabilities()
capabilities.textDocument.completion.completionItem.snippetSupport = true

vim.lsp.config("cssls", {
	capabilities = capabilities,
})

vim.lsp.config("eslint", {
	on_attach = function(client, bufnr)
		vim.api.nvim_create_autocmd("BufWritePre", {
			buffer = bufnr,
			command = "EsLintFixAll",
		})
	end,
})

vim.lsp.config("html", {
	cmd = { "vscode-html-languageserver", "--stdio" },
	filetypes = { "html", "ejs" },
	capabilities = capabilities,
	root_markers = { "package.json", ".git" },
})

vim.lsp.config("jsonls", {
	capabilities = capabilities,
})
