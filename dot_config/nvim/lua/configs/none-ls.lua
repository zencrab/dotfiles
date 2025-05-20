vim.filetype.add({ extension = { ejs = "ejs" } })
vim.treesitter.language.register("html", "ejs")

local null_ls = require("null-ls")

null_ls.setup({
	sources = {
		null_ls.builtins.formatting.prettier.with({
			extra_filetypes = { "ejs" },
			extra_args = { "--single-quote", "--plugin=prettier-plugin-ejs", "--print-width=1000" },
		}),
	},
})
