return {
	"zbirenbaum/copilot.lua",

    build = ":Copilot auth",

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
			"<C-e>",
			mode = "i",
			function()
				require("copilot.suggestion").accept()
			end,
			desc = "Copilot accept suggestion",
		},
		{
			"<C-]>",
			mode = "i",
			function()
				require("copilot.suggestion").next()
			end,
			desc = "Copilot next suggestion",
		},
		{
			"<C-[>",
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
