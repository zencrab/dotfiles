local M = {}

function M.lsp()
	local settings = require("configs.lsputils")

	require("lspconfig").lua_ls.setup({
		filetypes = { "lua" },

		-- Default settings
		on_init = settings.on_init,
		on_attach = settings.on_attach,
		capabilities = settings.capabilities,

		-- Specific lua_ls settings
		settings = {
			Lua = {
				diagnostics = {
					globals = { "vim" },
				},
			},
		},
	})
end

local none_ls = require("null-ls")
M.sources = {
	none_ls.builtins.formatting.stylua.with({
		filetypes = { "lua" },
	}),
}

return M
