return {
	"nvim-telescope/telescope.nvim",
    event = "VeryLazy",

	dependencies = {
		"nvim-lua/plenary.nvim",
		{
			"nvim-telescope/telescope-fzf-native.nvim",
			build = "make",
		},
		"nvim-telescope/telescope-ui-select.nvim",
	},

	config = function()
		local telescope = require("telescope")
		telescope.setup({
			defaults = {
				layout_strategy = "horizontal",
				sorting_strategy = "ascending",
				layout_config = { prompt_position = "top" },
				winblend = 0,
			},
			extensions = {
				fzf = {
					fuzzy = true,
					override_generic_sorter = true,
					override_file_sorter = true,
					case_mode = "smart_case",
				},
				["ui-select"] = {
					require("telescope.themes").get_dropdown({}),
				},
			},
		})
		telescope.load_extension("fzf")
		telescope.load_extension("ui-select")
		telescope.load_extension("fidget")
		telescope.load_extension("chezmoi")
	end,

	keys = {
		{ "<leader>ff", "<cmd>Telescope find_files<cr>", desc = "Find files" },
		{
			"<leader>fa",
			"<cmd>Telescope find_files follow=true no_ignore=true hidden=true<cr>",
			desc = "Find all files",
		},
		{ "<leader>fg", "<cmd>Telescope live_grep<cr>", desc = "Live grep" },
		{ "<leader>fb", "<cmd>Telescope buffers<cr>", desc = "Find buffers" },
		{ "<leader>fh", "<cmd>Telescope help_tags<cr>", desc = "Help tags" },
		{ "<leader>fm", "<cmd>Telescope marks<cr>", desc = "Find marks" },
		{ "<leader>fo", "<cmd>Telescope oldfiles<cr>", desc = "Oldfiles" },
		{ "<leader>fz", "<cmd>Telescope current_buffer_fuzzy_find<cr>", desc = "Current buffer" },
		{ "<leader>fc", "<cmd>Telescope git_commits<cr>", desc = "Git commits" },
		{ "<leader>fs", "<cmd>Telescope git_status<cr>", desc = "Git status" },
	},
}
