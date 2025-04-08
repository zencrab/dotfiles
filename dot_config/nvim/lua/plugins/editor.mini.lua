return {
	{
		"echasnovski/mini.ai",
		version = "*", -- stable release

		event = "LazyFile",

		opts = function()
			local ai = require("mini.ai")
			return {
				custom_textobjects = {
					-- adds iF/aF (function definition) and is/as (Lua string)
					s = { "%[%[().-()%]%]" },
					F = ai.gen_spec.treesitter({ a = "@function.outer", i = "@function.inner" }),
				},
			}
		end,
	},
	{
		"echasnovski/mini.surround",
		version = "*", -- stable release

		event = "LazyFile",

		config = function(_, opts)
			require("mini.surround").setup(opts)
		end,
	},
	{
		"echasnovski/mini.comment",
		version = "*", -- stable release

		event = "LazyFile",
	},
	{
		"echasnovski/mini.pairs",
		version = "*", -- stable release

		event = "InsertEnter",

		opts = {
			modes = {
				insert = true,
				command = true,
				terminal = false,
			},
		},
	},
	{
		"echasnovski/mini.icons",
		opts = {},
		lazy = true,
		specs = {
			{ "nvim-tree/nvim-web-devicons", enabled = false, optional = true },
		},
		init = function()
			package.preload["nvim-web-devicons"] = function()
				require("mini.icons").mock_nvim_web_devicons()
				return package.loaded["nvim-web-devicons"]
			end
		end,
	},
}
