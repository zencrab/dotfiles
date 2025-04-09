return {
	"nvimdev/dashboard-nvim",
	event = "VimEnter",

	dependencies = {
		"RileyGabrielson/inspire.nvim",
	},

	opts = {
		theme = "hyper",
		shortcut_type = "number",
		config = {
			disable_move = true,
			header = {
				"                                                                                       ",
				" █████╗ ██████╗  ██████╗██╗  ██╗ ██████╗ ███╗   ██╗    ██╗      █████╗ ██████╗ ███████╗",
				"██╔══██╗██╔══██╗██╔════╝██║  ██║██╔═══██╗████╗  ██║    ██║     ██╔══██╗██╔══██╗██╔════╝",
				"███████║██████╔╝██║     ███████║██║   ██║██╔██╗ ██║    ██║     ███████║██████╔╝███████╗",
				"██╔══██║██╔══██╗██║     ██╔══██║██║   ██║██║╚██╗██║    ██║     ██╔══██║██╔══██╗╚════██║",
				"██║  ██║██║  ██║╚██████╗██║  ██║╚██████╔╝██║ ╚████║    ███████╗██║  ██║██████╔╝███████║",
				"╚═╝  ╚═╝╚═╝  ╚═╝ ╚═════╝╚═╝  ╚═╝ ╚═════╝ ╚═╝  ╚═══╝    ╚══════╝╚═╝  ╚═╝╚═════╝ ╚══════╝",
				"                                                                                       ",
			},
			shortcut = {
				{
					icon = "󰏔 ",
					desc = "Plugins",
					group = "Number",
					action = "Lazy",
					key = "p",
				},
				{
					icon = "󰢛 ",
					desc = "Mason",
					group = "Number",
					action = "Mason",
					key = "m",
				},
				{
					icon = " ",
					desc = "Files",
					group = "Label",
					action = "Telescope find_files",
					key = "f",
				},
				{
					icon = " ",
					desc = "Old Files",
					group = "Label",
					action = "Telescope oldfiles",
					key = "o",
				},
				{
					icon = " ",
					desc = "Chezmoi Files",
					group = "Label",
					action = "Telescope chezmoi find_files",
					key = "c",
				},
			},
			footer = function()
				local inspire = require("inspire")
				local quote = inspire.get_quote()

				-- Add an empty line at the beginning and return the centered text
				return vim.list_extend({ "", "" }, inspire.center_text(quote.text, quote.author, 80, 8, 80))
			end,
		},
	},
}
