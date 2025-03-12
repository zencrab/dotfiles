return {
	"epwalsh/obsidian.nvim",

	ft = "markdown",

	dependencies = {
		{
			"nvim-lua/plenary.nvim",
		},
		{
			"nvim-telescope/telescope.nvim",
		},
	},

	opts = {
		workspaces = {
			{
				name = "second-brain",
				path = "~/second-brain/",
			},
		},
		daily_notes = {
			folder = "Daily Notes",
			date_format = "%Y-%m-%d",
			alias_format = "%B %-d, %Y",
			default_tags = { "daily-notes", "personal" },
			template = "New Daily Note.md",
		},
		completion = {
			nvim_cmp = true,
			min_chars = 2,
		},
		templates = {
			folder = "Templates",
			date_format = "%Y-%m-%d",
			time_format = "%H:%M",
		},
		preferred_link_style = "wiki",
		picker = {
			name = "telescope.nvim",
			note_mappings = {
				new = "<C-x>",
				insert_link = "<C-l>",
			},
			tag_mappings = {
				tag_note = "<C-x>",
				insert_tag = "<C-l>",
			},
		},
		sort_by = "modified",
		sort_reversed = true,
		attachements = {
			img_folder = "Files",
		},
		ui = {
			enabled = false,
		},
	},
	keys = {
		{
			"<leader>oo",
			mode = "n",
			"<cmd>ObsidianOpen<CR>",
			desc = "Obsidian open file",
		},
		{
			"<leader>os",
			mode = "n",
			"<cmd>ObsidianSearch<CR>",
			desc = "Obsidian search",
		},
		{
			"<leader>ol",
			mode = "n",
			"<cmd>ObsidianFollowLink<CR>",
			desc = "Obsidian follow link",
		},
		{
			"<leader>ov",
			mode = "n",
			"<cmd>ObsidianFollowLink vsplit<CR>",
			desc = "Obsidian follow link (vsplit)",
		},
		{
			"<leader>oh",
			mode = "n",
			"<cmd>ObsidianFollowLink hsplit<CR>",
			desc = "Obsidian follow link (hsplit)",
		},
		{
			"<leader>ob",
			mode = "n",
			"<cmd>ObsidianBacklinks<CR>",
			desc = "Obsidian show backlinks",
		},
		{
			"<leader>ot",
			mode = "n",
			"<cmd>ObsidianTemplate<CR>",
			desc = "Obsidian templates",
		},
		{
			"<leader>oT",
			mode = "n",
			"<cmd>ObsidianNewFromTemplate<CR>",
			desc = "Obsidian create file from template",
		},
		{
			"<leader>oc",
			mode = "n",
			"<cmd>ObsidianTOC<CR>",
			desc = "Obsidian open table of contents",
		},
	},
}
