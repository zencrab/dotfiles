return {
	"nvimdev/dashboard-nvim",
	name = "dashboard.nvim",

	dependencies = {
		"echasnovski/mini.icons",
	},

	event = "VimEnter",

	opts = {
		theme = "hyper",
		disable_move = true,
		shortcut_type = "number",
		config = {
			header = {
				[[                                                                       ]],
				[[                                                                       ]],
				[[                                                                     ]],
				[[       ████ ██████           █████      ██                     ]],
				[[      ███████████             █████                             ]],
				[[      █████████ ███████████████████ ███   ███████████   ]],
				[[     █████████  ███    █████████████ █████ ██████████████   ]],
				[[    █████████ ██████████ █████████ █████ █████ ████ █████   ]],
				[[  ███████████ ███    ███ █████████ █████ █████ ████ █████  ]],
				[[ ██████  █████████████████████ ████ █████ █████ ████ ██████ ]],
				[[                                                                       ]],
				[[                                                                       ]],
			},
			project = {
				enable = false,
			},
			mru = {
				limit = 10,
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
					icon = " ",
					desc = "Files",
					group = "Label",
					action = function()
						Snacks.picker.files()
					end,
					key = "f",
				},
				{
					icon = " ",
					desc = "Recent Files",
					group = "Label",
					action = function()
						Snacks.picker.recent()
					end,
					key = "r",
				},
				{
					icon = " ",
					desc = "Chezmoi Files",
					group = "Label",
					action = function()
						require("modules.chezmoi"):picker()
					end,
					key = "c",
				},
			},
			footer = {},
		},
	},
}
