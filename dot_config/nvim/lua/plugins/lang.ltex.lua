return {
	"icewind/ltex-client.nvim",

	ft = { "markdown", "obsidian", "tex", "latex" },

	opts = {
        user_dictionaries_path = vim.fn.expand("~") .. "/.config/nvim",
    },
}
