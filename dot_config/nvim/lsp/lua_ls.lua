vim.lsp.config("lua_ls", {
	-- Server settings
	settings = {
		Lua = {
			diagnostics = {
				globals = {
					"Snacks",
					"MiniIcons",
				},
			},
			runtime = {
				version = "LuaJIT",
				path = {
					"lua/?.lua",
					"lua/?/init.lua",
				},
			},
			workspace = {
				checkThirdParty = false,
				library = {
					vim.env.VIMRUNTIME,
				},
			},
			telemetry = {
				enable = false,
			},
		},
	},
})
