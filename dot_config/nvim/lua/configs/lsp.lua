-- Virtual lines
vim.diagnostic.config({
	virtual_text = {
		severity = {
			min = "INFO",
			max = "WARN",
		},
	},
	virtual_lines = {
		severity = {
			min = "ERROR",
		},
	},
	severity_sort = true,
})

vim.lsp.enable("lua-language-server")
vim.lsp.enable("pyright")
vim.lsp.enable("marksman")
vim.lsp.enable("nil")
vim.lsp.enable("ltex")
