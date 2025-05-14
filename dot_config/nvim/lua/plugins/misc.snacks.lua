return {
	"folke/snacks.nvim",
	event = "VeryLazy",

	---@type snacks.Config
	opts = {
		animate = { enabled = false },
		bigfile = { enabled = false },

		-- delete buffers without disrupting window layout
		bufdelete = {
			enabled = true,
		},

		-- Lazygit
		lazygit = {
			enabled = true,
			theme_path = vim.fs.normalize(vim.fn.stdpath("cache") .. "/lazygit-theme.yml"),
		},

		-- Picker
		picker = {
			enabled = true,
			ui_select = true,
		},
	},

	-- Keymaps
	keys = {

		-- bufdelete
		{
			"<leader>bd",
			function()
				require("snacks").bufdelete()
			end,
			desc = "Delete current buffer",
		},

		-- Lazygit
		{
			"<leader>G",
			function()
				require("snacks").lazygit()
			end,
			desc = "Open Lazygit",
		},

		-- Picker
		{
			"<leader>fs",
			function()
				require("snacks").picker.smart()
			end,
			desc = "Find smart files",
		},
		{
			"<leader>ff",
			function()
				require("snacks").picker.files()
			end,
			desc = "Find files",
		},
		{
			"<leader>fb",
			function()
				require("snacks").picker.buffers()
			end,
			desc = "Find buffers",
		},
		-- {
		-- 	"<leader>fn",
		-- 	function()
		-- 		Snacks.picker.notifications()
		-- 	end,
		-- 	desc = "Find notifications",
		-- },
		{
			"<leader>fN",
			function()
				require("snacks").picker.files({ cwd = vim.fn.stdpath("config") })
			end,
			desc = "Find Neovim config",
		},
		{
			"<leader>fp",
			function()
				require("snacks").picker.projects()
			end,
			desc = "Find project files",
		},
		{
			"<leader>fr",
			function()
				require("snacks").picker.recent()
			end,
			desc = "Find recent files",
		},

		-- Git
		{
			"<leader>fgf",
			function()
				require("snacks").picker.git_files()
			end,
			desc = "Find git files",
		},
		{
			"<leader>fgb",
			function()
				require("snacks").picker.git_branches()
			end,
			desc = "Find git branches",
		},
		{
			"<leader>fgl",
			function()
				require("snacks").picker.git_log()
			end,
			desc = "Find git log",
		},
		{
			"<leader>fgL",
			function()
				require("snacks").picker.git_log_line()
			end,
			desc = "Find git log line",
		},
		{
			"<leader>fgs",
			function()
				require("snacks").picker.git_status()
			end,
			desc = "Find git status",
		},
		{
			"<leader>fgS",
			function()
				require("snacks").picker.git_stash()
			end,
			desc = "Find git stash",
		},

		-- Grep
		{
			"<leader>fGl",
			function()
				require("snacks").picker.lines()
			end,
			desc = "Find buffer lines",
		},
		{
			"<leader>fGb",
			function()
				require("snacks").picker.grep_buffers()
			end,
			desc = "Find grep buffers",
		},
		{
			"<leader>fGg",
			function()
				require("snacks").picker.grep()
			end,
			desc = "Find grep",
		},
		{
			"<leader>fGw",
			function()
				require("snacks").picker.grep_word()
			end,
			desc = "Find word or selection",
			mode = { "n", "x" },
		},

		-- search
		{
			"<leader>fi",
			function()
				require("snacks").picker.icons()
			end,
			desc = "Find icons",
		},
		{
			"<leader>fk",
			function()
				require("snacks").picker.keymaps()
			end,
			desc = "Find keymaps",
		},
		{
			"<leader>fu",
			function()
				require("snacks").picker.undo()
			end,
			desc = "Find undo history",
		},
	},
}
