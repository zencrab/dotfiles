return {
	"nvimdev/dashboard-nvim",

	event = "VimEnter",

	dependencies = {
		"nvim-tree/nvim-web-devicons",
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
			},
			footer = {
				"",
				"  Neovim",
			},
		},
	},
}
