return {
	"folke/persistence.nvim",
	event = "BufReadPre",

	opts = {
		-- add any custom options here
	},

	keys = {
		{
			"<leader>sl",
			function()
				require("persistence").load()
			end,
			desc = "Load session",
		},
		{
			"<leader>sL",
			function()
				require("persistence").load({ last = true })
			end,
			desc = "Load last session",
		},
		{
			"<leader>ss",
			function()
				require("persistence").select()
			end,
			desc = "Select session",
		},
	},
}
