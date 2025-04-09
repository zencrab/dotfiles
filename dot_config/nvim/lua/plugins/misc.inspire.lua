return {
	"RileyGabrielson/inspire.nvim",
	lazy = true,

	opts = {
		-- 'daily' or 'random'
		mode = "daily",

		-- Override the default quotes
	},
	config = function(_, opts)
		require("inspire").setup(opts)
	end,
}
