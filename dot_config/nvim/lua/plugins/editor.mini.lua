return {
	{
		"echasnovski/mini.ai",
		version = "*", -- stable release

		event = "LazyFile",

		config = function()
			local ai = require("mini.ai")
			ai.setup({
				custom_textobjects = {
					-- adds iF/aF (function definition) and is/as (Lua string)
					s = { "%[%[().-()%]%]" },
					F = ai.gen_spec.treesitter({ a = "@function.outer", i = "@function.inner" }),
				},
			})
		end,
	},
	{
		"echasnovski/mini.comment",
		version = "*", -- stable release

		event = "LazyFile",

		config = function()
			local comment = require("mini.comment")
			comment.setup()
		end,
	},
	{
		"echasnovski/mini.surround",
		version = "*", -- stable release

		event = "LazyFile",

		config = function()
			local surround = require("mini.surround")
			surround.setup()
		end,
	},
	{
		"echasnovski/mini.pairs",
		version = "*", -- stable release

		event = "InsertEnter",

		config = function()
			local pairs = require("mini.pairs")
            pairs.setup()
		end,
	},
}
