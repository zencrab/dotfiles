--
-- ensure lazy.nvim is installed
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
	vim.fn.system({
		"git",
		"clone",
		"--filter=blob:none",
		"https://github.com/folke/lazy.nvim.git",
		"--branch=stable", -- latest stable release
		lazypath,
	})
end
vim.opt.rtp:prepend(lazypath)

-- plugins to pass to lazu.nvim
local plugins = {
	-- lazy-events.nvim needs to be first
	{ "bwpge/lazy-events.nvim", import = "lazy-events.import", lazy = false },

	-- The entire plugins directory
	{ import = "plugins" },
}

require("lazy").setup(plugins, {
	ui = {
		size = { width = 0.8, height = 0.9 },
		border = "rounded",
		icons = {
			loaded = " ",
			not_loaded = " ",
		},
	},
	rocks = {
		enabled = false,
	},
})

-- Keymaps
vim.keymap.set("n", "<leader>L", "<cmd>Lazy<CR>", { desc = "Open Lazy" })
