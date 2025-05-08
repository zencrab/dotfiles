-- This file needs to be required before lazy.setup()
vim.g.lazy_events_config = {

	simple = {
		-- LazyFile fires when you enter a non special buffer (e.g. not dashboard, lazy, mason)
		LazyFile = { "BufReadPre", "BufNewFile" },
	},

	projects = {},

	custom = {
		-- DashboardLeave fires when you leave the dashboard buffer.
		DashboardLeave = {
			event = "BufLeave",
			pattern = "*",
			once = false,
			cond = function(event)
				local buf_ft = vim.api.nvim_get_option_value("filetype", { buf = event.buf })
				return buf_ft == "dashboard"
			end,
		},

        -- ChezmoiFile fires when the current buffer worked with is a file in the chezmoi directory.
        ChezmoiFile = {
            event = { "BufRead", "BufNewFile" },
	        pattern = os.getenv("HOME") .. "/.local/share/chezmoi/*",
            once = false,
            cond = function(event)
                return true
            end,
        }
	},
}
