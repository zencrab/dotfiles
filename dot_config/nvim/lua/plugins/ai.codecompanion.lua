return {
	"olimorris/codecompanion.nvim",

	dependencies = {
		"nvim-lua/plenary.nvim",
		"MeanderingProgrammer/render-markdown.nvim",
	},

	-- init = function()
	-- 	require("modules.fidget-codecompanion"):init()
	-- end,

	opts = {
		strategies = {
			chat = {
				adapter = "copilot",
				roles = {
					llm = function(adapter)
						return "  " .. adapter.formatted_name .. " (" .. adapter.schema.model.default .. ")"
					end,
					user = " " .. vim.fn.getenv("USER"),
				},
			},
			cmd = { adapter = "copilot" },
			inline = { adapter = "copilot" },
		},
		display = {
			chat = {
				auto_scroll = true,
				intro_message = "Welcome " .. vim.fn.getenv("USER") .. "! How can I assist you today?",
			},
		},
		adapters = {
			copilot = function()
				return require("codecompanion.adapters").extend("copilot", {
					schema = {
						model = {
							default = "claude-3.7-sonnet-thought",
						},
					},
				})
			end,
		},
	},

	keys = {
		{ "<leader>cc", mode = "n", "<Cmd>CodeCompanionChat<Cr>", desc = "AI open chat" },
		{ "<leader>ct", mode = "n", "<Cmd>CodeCompanionChat Toggle<Cr>", desc = "AI toggle chat" },
		{ "<leader>ca", mode = "n", "<Cmd>CodeCompanionActions<Cr>", desc = "AI Action" },
	},
}
