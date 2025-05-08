return {
	"nvimdev/dashboard-nvim",
	name = "dashboard.nvim",
    
    event = "VimEnter",

	opts = {
		theme = "hyper",
		shortcut_type = "number",
		config = {
			disable_move = true,
			header = {
                " ███████╗███████╗███╗   ██╗ ██████╗██████╗  █████╗ ██████╗ ",
                " ╚══███╔╝██╔════╝████╗  ██║██╔════╝██╔══██╗██╔══██╗██╔══██╗",
                "   ███╔╝ █████╗  ██╔██╗ ██║██║     ██████╔╝███████║██████╔╝",
                "  ███╔╝  ██╔══╝  ██║╚██╗██║██║     ██╔══██╗██╔══██║██╔══██╗",
                " ███████╗███████╗██║ ╚████║╚██████╗██║  ██║██║  ██║██████╔╝",
                " ╚══════╝╚══════╝╚═╝  ╚═══╝ ╚═════╝╚═╝  ╚═╝╚═╝  ╚═╝╚═════╝ ",
                "                                                           ",
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
                        Snacks.picker.files({ 
                            title = "Chezmoi",
                            cwd = os.getenv("HOME") .. "/.local/share/chezmoi/" 
                        })
                    end,
					key = "c",
				},
			},
		},
    },
}
