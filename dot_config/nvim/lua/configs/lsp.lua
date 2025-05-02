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

-- Automatic LSP severs setup
-- require("mason-lspconfig").setup_handlers({
-- 	-- Default handler (ought to be the first one).
-- 	function(server_name)
-- 		vim.lsp.config(server_name, {})
-- 		vim.lsp.enable(server_name)
-- 	end,
--
-- 	-- Custom handler for specific server.
-- 	["jsonls"] = function()
-- 		require("lspconfig").jsonls.setup({
-- 			init_options = {
-- 				provideFormatter = true,
-- 			},
-- 		})
-- 	end,
-- 	["ltex"] = function()
-- 		require("lspconfig").ltex.setup({
-- 			root_markers = { ".git", ".ltexrc", ".ltex" },
-- 			settings = {
-- 				ltex = {
-- 					language = "en-GB",
-- 					completion = { enabled = true },
-- 				},
-- 			},
-- 		})
-- 	end,
-- 	["lua_ls"] = function()
-- 		vim.lsp.config("lua_ls", {
-- 			settings = {
-- 				Lua = {
-- 					diagnostics = {
-- 						globals = { "vim" },
-- 					},
-- 				},
-- 			},
-- 		})
-- 		vim.lsp.enable("lua_ls")
-- 	end,
-- 	["pyright"] = function()
-- 		vim.lsp.config("pyright", {
-- 			settings = {
-- 				python = {
-- 					analysis = {
-- 						diagnosticMode = "workspace",
-- 						typeCheckingMode = "basic",
-- 					},
-- 				},
-- 			},
-- 		})
--         vim.lsp.enable("pyright")
-- 	end,
-- 	["yamlls"] = function()
-- 		require("lspconfig").yamlls.setup({
-- 			settings = {
-- 				redhat = {
-- 					telemetry = {
-- 						enabled = false,
-- 					},
-- 				},
-- 				yaml = {
-- 					validate = true,
-- 					format = {
-- 						enable = true,
-- 					},
-- 					schemaStore = {
-- 						enable = true,
-- 					},
-- 				},
-- 			},
-- 		})
-- 	end,
--
--     ["ts_ls"] = function()
--         require("lspconfig").ts_ls.setup({
--
--         })
--     end,
-- })
