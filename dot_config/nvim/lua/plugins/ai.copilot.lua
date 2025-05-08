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

        local map = vim.keymap.set
        map("i", "<C-e>", function ()
            require("copilot.suggestion").accept()
        end, { desc = "Copilot accept suggestion" })
        map("i", "<C-]>", function ()
            require("copilot.suggestion").next()
        end, { desc = "Copilot next suggestion" })
        map("i", "<C-[>", function ()
            require("copilot.suggestion").prev()
        end, { desc = "Copilot previous suggestion" })
        map("n", "<leader>cT", function ()
            require("copilot.suggestion").toggle_auto_trigger()
        end, { desc = "Copilot toggle suggestions" })
	end,
}
