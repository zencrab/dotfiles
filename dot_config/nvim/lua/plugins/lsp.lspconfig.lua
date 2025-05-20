return {
	"neovim/nvim-lspconfig",
	name = "lspconfig.nvim",

	lazy = false,

	config = function()
		require("configs.lsp")
	end,
}
