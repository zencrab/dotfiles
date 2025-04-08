return {
	"tris203/precognition.nvim",
	event = "LazyFile",

    enabled = false,


	keys = {
		{
			"<leader>pt",
			function()
				if require("precognition").toggle() then
					vim.notify("Precognition ON")
				else
					vim.notify("Precognition OFF")
				end
			end,
			desc = "Toggle Precognition",
		},
		{
			"<leader>pp",
			function()
				require("precognition").peek()
			end,
			desc = "Peek Precognition",
		},
	},
}
