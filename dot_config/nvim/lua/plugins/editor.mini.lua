return {
	{
		"echasnovski/mini.nvim",
		version = "*", -- stable release

		event = "LazyFile",

		config = function()
			-- mini.ai
			local ai = require("mini.ai")
			ai.setup({
				custom_textobjects = {
					-- adds iB/aB (bracket)
					s = { "%[%[().-()%]%]" },
					-- adds iF/aF (function)
					f = ai.gen_spec.treesitter({ a = "@function.outer", i = "@function.inner" }),
					-- adds ic/ac (class)
					c = ai.gen_spec.treesitter({ a = "@class.outer", i = "@class.inner" }),
					-- adds io/ao (code block)
					o = ai.gen_spec.treesitter({
						a = { "@block.outer", "@conditional.outer", "@loop.outer" },
						i = { "@block.inner", "@conditional.inner", "@loop.inner" },
					}),
				},
			})

			-- mini.surround
			require("mini.surround").setup()

			-- mini.comment
			require("mini.comment").setup()

			-- mini.pairs
			require("mini.pairs").setup({
				modes = {
					insert = true,
					command = true,
					terminal = false,
				},
			})

			-- mini.hipatterns
			local hipatterns = require("mini.hipatterns")
			hipatterns.setup({
				highlighters = {

					-- Highlight standalone 'FIXME', 'HACK', 'TODO', 'NOTE'
					fixme = { pattern = "%f[%w]()FIXME()%f[%W]", group = "MiniHipatternsFixme" },
					hack = { pattern = "%f[%w]()HACK()%f[%W]", group = "MiniHipatternsHack" },
					todo = { pattern = "%f[%w]()TODO()%f[%W]", group = "MiniHipatternsTodo" },
					note = { pattern = "%f[%w]()NOTE()%f[%W]", group = "MiniHipatternsNote" },

					-- Highlight hex color strings (`#rrggbb`) using that color
					hex_color = hipatterns.gen_highlighter.hex_color(),
				},
			})

			-- mini.icons
			require("mini.icons").setup()
			MiniIcons.mock_nvim_web_devicons()
		end,
	},
}
