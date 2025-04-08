return {
	"icewind/ltex-client.nvim",

	ft = { "markdown", "tex" },

	opts = {
        user_dictionaries_path = vim.fn.expand("~") .. "/.config/nvim",
    },
}
