return {
	"olimorris/codecompanion.nvim",

	dependencies = {
		"nvim-lua/plenary.nvim",
		"nvim-treesitter/nvim-treesitter",
	},

	opts = {
		strategies = {
			chat = { adapter = "copilot" },
			cmd = { adapter = "copilot" },
            inline = { adapter = "copilot" },
		},
	},

	init = function()
		require("configs.codecompanion-fidget"):init()
	end,

	keys = {
		{ "<leader>cc", mode = "n", "<Cmd>CodeCompanionChat<Cr>", desc = "AI open chat" },
		{ "<leader>ct", mode = "n", "<Cmd>CodeCompanionChat Toggle<Cr>", desc = "AI toggle chat" },
		{ "<leader>ca", mode = "n", "<Cmd>CodeCompanionActions<Cr>", desc = "AI Action" },
	},
}
