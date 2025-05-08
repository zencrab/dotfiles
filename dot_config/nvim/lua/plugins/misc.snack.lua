return {
	"folke/snacks.nvim",
	event = "VeryLazy",

	---@type snacks.Config
	opts = {
        
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
			"<leader>ff",
			function()
				Snacks.picker.smart()
			end,
			desc = "Find smart files",
		},
		{
			"<leader>fF",
			function()
				Snacks.picker.files()
			end,
			desc = "Find files",
		},
		{
			"<leader>fb",
			function()
				Snacks.picker.buffers()
			end,
			desc = "Find buffers",
		},
		{
			"<leader>fG",
			function()
				Snacks.picker.grep()
			end,
			desc = "Find grep",
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
				Snacks.picker.files({ cwd = vim.fn.stdpath("config") })
			end,
			desc = "Find Neovim config",
		},
		{
			"<leader>fp",
			function()
				Snacks.picker.projects()
			end,
			desc = "Find project files",
		},
		{
			"<leader>fr",
			function()
				Snacks.picker.recent()
			end,
			desc = "Find recent files",
		},

		-- Git
		{
			"<leader>fgf",
			function()
				Snacks.picker.git_files()
			end,
			desc = "Find git files",
		},
		{
			"<leader>fgb",
			function()
				Snacks.picker.git_branches()
			end,
			desc = "Find git branches",
		},
		{
			"<leader>fgl",
			function()
				Snacks.picker.git_log()
			end,
			desc = "Find git log",
		},
		{
			"<leader>fgL",
			function()
				Snacks.picker.git_log_line()
			end,
			desc = "Find git log line",
		},
		{
			"<leader>fgs",
			function()
				Snacks.picker.git_status()
			end,
			desc = "Find git status",
		},
		{
			"<leader>fgS",
			function()
				Snacks.picker.git_stash()
			end,
			desc = "Find git stash",
		},

		-- Grep
		{
			"<leader>fGl",
			function()
				Snacks.picker.lines()
			end,
			desc = "Find buffer lines",
		},
		{
			"<leader>fGb",
			function()
				Snacks.picker.grep_buffers()
			end,
			desc = "Find grep buffers",
		},
		{
			"<leader>fGg",
			function()
				Snacks.picker.grep()
			end,
			desc = "Find grep",
		},
		{
			"<leader>fGw",
			function()
				Snacks.picker.grep_word()
			end,
			desc = "Find word or selection",
			mode = { "n", "x" },
		},

		-- search
		{
			"<leader>fi",
			function()
				Snacks.picker.icons()
			end,
			desc = "Find icons",
		},
		{
			"<leader>fk",
			function()
				Snacks.picker.keymaps()
			end,
			desc = "Find keymaps",
		},
		{
			"<leader>fu",
			function()
				Snacks.picker.undo()
			end,
			desc = "Find undo history",
		},
	},
}
