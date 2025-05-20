local hardtime = require("hardtime")

local M = {}

function M:toggle()
	if hardtime.is_plugin_enabled then
		hardtime.disable()
		vim.notify("Disabled", vim.log.levels.INFO, { annote = "Hardtime", group = "hardtime" })
	else
		hardtime.enable()
		vim.notify("Enabled", vim.log.levels.INFO, { annote = "Hardtime", group = "hardtime" })
	end
end

return M
