return {
	"nvimtools/none-ls.nvim",
	event = "BufReadPre",

	config = function()
		require("configs.none-ls")
	end,
}
