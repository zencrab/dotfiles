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

vim.lsp.enable("lua_ls")
vim.lsp.enable("nil_ls")
vim.lsp.enable("pyright")
