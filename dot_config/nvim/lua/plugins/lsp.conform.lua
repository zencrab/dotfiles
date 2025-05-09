return {
	"stevearc/conform.nvim",

	event = { "BufWritePre" },

	---@module "conform"
	---@type conform.setupOpts
	opts = {
		-- define formatters by filetype
		formatters_by_ft = {
			lua = { "stylua" },
			nix = { "nixfmt" },
			python = { "ruff_format" },
		},

		-- customise formatters
		formatters = {
			nixfmt = {
				args = { "--indent=4" },
			},
		},

		-- set default options
		default_format_opts = {
			lsp_format = "fallback",
		},

		-- set format-on-save
		format_on_save = {
			timeout_ms = 500,
			lsp_format = "fallback",
		},
	},

	cmd = { "ConformInfo" },

	keys = {
		{
			"<leader>fm",
			mode = { "n", "v" },
			function()
				require("conform").format({ async = true })
			end,
			desc = "Format buffer",
		},
	},
}
