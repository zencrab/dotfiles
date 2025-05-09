local M = {}

function M.on_attach(client, bufnr)
	client.server_capabilities.semanticTokensProvider = nil
end

return M
