return {
	"nvimtools/none-ls.nvim",

	event = "LazyFile",

	config = function()
		require("configs.none-ls")
	end,
}
