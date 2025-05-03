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


-- Lua Language Sever
vim.lsp.config('lua_ls', {
    cmd = { "lua-lsp" },

    filetypes = { "lua" },
    
  on_init = function(client)
    if client.workspace_folders then
      local path = client.workspace_folders[1].name
      if
        path ~= vim.fn.stdpath('config')
        and (vim.uv.fs_stat(path .. '/.luarc.json') or vim.uv.fs_stat(path .. '/.luarc.jsonc'))
      then
        return
      end
    end

    client.config.settings.Lua = vim.tbl_deep_extend('force', client.config.settings.Lua, {
      runtime = {
        version = 'LuaJIT',
        path = {
          'lua/?.lua',
          'lua/?/init.lua',
        },
      },

      -- Make the server aware of Neovim runtime files
      workspace = {
        checkThirdParty = false,
        library = {
          vim.env.VIMRUNTIME
        }
      }
    })
  end,
  settings = {
    Lua = {}
  }
})

vim.lsp.enable("lua_ls")

vim.lsp.enable("nil_ls")
