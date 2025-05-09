return {
	"folke/persistence.nvim",
	event = "BufReadPre",

	opts = {
		-- add any custom options here
	},

	keys = {
		{
			"<leader>sl",
			function()
				require("persistence").load()
			end,
			desc = "Load session",
		},
		{
			"<leader>sL",
			function()
				require("persistence").load({ last = true })
			end,
			desc = "Load last session",
		},
		{
			"<leader>ss",
			function()
				require("persistence").select()
			end,
			desc = "Select session",
		},
		{
			"<leader>sd",
			function()
				local persistence = require("persistence")
				local session_file = persistence.current()
				if session_file and vim.loop.fs_stat(session_file) ~= 0 then
					persistence.stop()
					vim.fn.system("rm " .. vim.fn.fnameescape(session_file))
				end
				vim.notify("Deleted current session", vim.log.levels.INFO)
			end,
			desc = "Delete current session",
		},
	},
}
