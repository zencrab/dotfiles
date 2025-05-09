return {
	"folke/flash.nvim",

	---@type Flash.Config
	opts = {
		modes = {
			char = {
				enabled = false,
			},
		},
		prompt = {
			prefix = { { "  Flashing to: ", "FlashMatch" } },
		},
	},

	keys = {
		{
			"f",
			mode = { "n", "x", "o" },
			function()
				require("flash").jump()
			end,
			desc = "Flash Jump",
		},
		{
			"F",
			mode = { "n", "x", "o" },
			function()
				require("flash").treesitter()
			end,
			desc = "Flash Treesitter",
		},
	},
}
