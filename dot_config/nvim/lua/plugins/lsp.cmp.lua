return {
	"hrsh7th/nvim-cmp",

	event = "LazyFile",

	dependencies = {
		{
			"L3MON4D3/LuaSnip",
		},
		{
			"saadparwaiz1/cmp_luasnip",
		},
		{
			"rafamadriz/friendly-snippets",
		},
		{
			"hrsh7th/cmp-nvim-lsp",
			opts = {
				sources = {
					{ name = "nvim_lsp" },
				},
			},
		},
	},

	config = function()
		local cmp = require("cmp")
		local luasnip = require("luasnip")

		cmp.setup({
			snippet = {
				expand = function(args)
					require("luasnip").lsp_expand(args.body)
				end,
			},
			window = {
				completion = cmp.config.window.bordered(),
				documentation = cmp.config.window.bordered(),
			},
			sources = cmp.config.sources({
				{ name = "nvim_lsp" },
				{ name = "luasnip" },
				{ name = "render-markdown" },
				{ name = "buffer" },
				{ name = "path" },
			}),
			mapping = cmp.mapping.preset.insert({
				["<C-e>"] = cmp.mapping.abort(),
				["<CR>"] = cmp.mapping.confirm({ select = true }),

				-- TAB mapping (smart logic for snippet jumps & regular cycling)
				["<Tab>"] = cmp.mapping(function(fallback)
					if cmp.visible() then
						cmp.select_next_item()
					elseif luasnip.expand_or_jumpable() then
						luasnip.expand_or_jump()
					else
						fallback() -- fallback to normal Tab behavior (like indentation)
					end
				end, { "i", "s" }),

				["<S-Tab>"] = cmp.mapping(function(fallback)
					if cmp.visible() then
						cmp.select_prev_item()
					elseif luasnip.jumpable(-1) then
						luasnip.jump(-1)
					else
						fallback()
					end
				end, { "i", "s" }),
			}),
		})

		-- Add VsCode like snippets
		require("luasnip.loaders.from_vscode").lazy_load()
	end,
}
