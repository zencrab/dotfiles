return {
	"williamboman/mason.nvim",
	build = ":MasonUpdate",

	event = "VeryLazy",

	cmd = { "Mason", "MasonUpdate" },

	opts = {
		ui = {
			border = "rounded",

			icons = {
				package_installed = " ",
				package_pending = " ",
				package_uninstalled = " ",
			},
		},

		ensure_installed = {
			-- Latex
			"texlab",

			-- Lua
			"lua-language-server",
			"stylua",

			-- Markdown
			"marksman",
			"markdownlint",
			"prettier",

			-- Nix
			-- "nil",
			-- "nixfmt",

			-- Python
			"pyright",
			"black",
			"isort",
			"mypy",

			-- Spelling
			"ltex-ls",

            -- YAML
            "yaml-language-server",
		},
	},
	opts_extend = {
		"ensure_installed",
	},

	config = function(_, opts)
		require("mason").setup(opts)

		local mason_registry = require("mason-registry")
		mason_registry:on("package:install:success", function()
			vim.defer_fn(function()
				-- trigger FileType event to possibly load this newly installed LSP server
				require("lazy.core.handler.event").trigger({
					event = "FileType",
					buf = vim.api.nvim_get_current_buf(),
				})
			end, 100)
		end)

		mason_registry.refresh(function()
			for _, server in ipairs(opts.ensure_installed) do
				local package = mason_registry.get_package(server)
				if not package:is_installed() then
					package:install()
				end
			end
		end)
	end,

	keys = {
		{
			"<leader>M",
			"<cmd>Mason<CR>",
			desc = "Open Mason",
		},
	},
}
