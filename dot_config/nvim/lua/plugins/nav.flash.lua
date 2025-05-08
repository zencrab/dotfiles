return {
	"folke/flash.nvim",

	---@type Flash.Config
	opts = {},

	keys = {
		{
			"-",
			mode = { "n", "x", "o" }, -- normal, visual, operator-pending
			function()
				require("flash").jump()
			end,
			desc = "Flash Jump",
		},
		{
			"_",
			mode = { "n", "x", "o" },
			function()
				require("flash").treesitter()
			end,
			desc = "Flash Treesitter",
		},
	},
}
