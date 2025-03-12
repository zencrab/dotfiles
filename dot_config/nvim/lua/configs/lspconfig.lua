local lsp_modules = vim.fn.globpath(vim.fn.stdpath("config") .. "/lua/langs", "*.lua", false, true)

local sources = {}

for _, module_path in ipairs(lsp_modules) do
	local module_name = module_path:match("([^/]+)%.lua$")
	if module_name then
		local ok, mod = pcall(require, "langs." .. module_name)
		if ok then
			if mod.lsp then
				mod.lsp()
			end
			if mod.sources then
				vim.list_extend(sources, mod.sources)
			end
		else
			vim.notify("Failed to load setup for module: lspconfig/" .. module_name, vim.log.levels.ERROR)
		end
	end
end

require("null-ls").setup({
	sources = sources,
})

local border = "rounded"
vim.lsp.handlers["textDocument/hover"] = vim.lsp.with(vim.lsp.handlers.hover, { border = border })
vim.lsp.handlers["textDocument/signatureHelp"] = vim.lsp.with(vim.lsp.handlers.signature_help, { border = border })
vim.diagnostic.config({
	float = { border = border },
})
