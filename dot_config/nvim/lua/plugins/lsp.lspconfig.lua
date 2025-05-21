return {
	"neovim/nvim-lspconfig",
	name = "lspconfig.nvim",

	event = { "BufReadPre" },

	config = function()
		require("configs.lsp")
	end,
}
