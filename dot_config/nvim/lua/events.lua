-- This file needs to be required before lazy.setup()
vim.g.lazy_events_config = {
    simple = {
        -- LazyFile fires when you enter a non special buffer, e.g. dashboard, lazy, mason
        LazyFile = { "BufReadPre", "BufNewFile" },
    },
    projects = {},
    custom = {
        -- DashboardLeave fires when you leave the dashboard buffer
        DashboardLeave = {
            event = "BufLeave",
            pattern = "*",
            once = false,
            cond = function(event)
                local buf_ft = vim.api.nvim_get_option_value("filetype", { buf = event.buf })
                return buf_ft == "dashboard"
            end,
        },
        -- LazyObsidian fires when you eneter a buffer with filetype obsidian.md
        -- LazyObsidian = {
        --     event = { "BufReadPost", "BufNewFile" },
        --     pattern = "*.md",
        --     once = false,
        --     cond = function(event)
        --         local is_obsidian_file = require("configs.lsputils").is_obsidian_file
        --
        --         if is_obsidian_file(event.buf) then
        --             vim.bo[event.buf].filetype = "obsidian"
        --             vim.notify(" Obsidian.md detected!")
        --             return true
        --         end
        --         return false
        --     end,
        -- }
    },
}
