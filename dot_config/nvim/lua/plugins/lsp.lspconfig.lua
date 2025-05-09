return {
	"neovim/nvim-lspconfig",
	name = "lspconfig.nvim",

	event = "LazyFilePost",

	config = function()
		require("configs.lsp")
	end,
}
