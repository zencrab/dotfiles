return {
	"zbirenbaum/copilot.lua",

	event = "InsertEnter",

	opts = {
		suggestion = {
			enabled = true,
			auto_trigger = true,
		},
	},

	config = function(_, opts)
		require("copilot").setup(opts)
	end,

	keys = {
		{
			"<M-e>",
			mode = "i",
			function()
				require("copilot.suggestion").accept()
			end,
			desc = "Copilot accept suggestion",
		},
		{
			"<M-n>",
			mode = "i",
			function()
				require("copilot.suggestion").next()
			end,
			desc = "Copilot next suggestion",
		},
		{
			"<M-p>",
			mode = "i",
			function()
				require("copilot.suggestion").prev()
			end,
			desc = "Copilot previous suggestion",
		},
		{
			"<leader>cT",
			mode = { "n" },
			function()
				require("copilot.suggestion").toggle_auto_trigger()
			end,
			desc = "Copilot toggle suggestions",
		},
	},
}
