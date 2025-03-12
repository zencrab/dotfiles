return {
	"github/copilot.vim",

	event = "LazyFile",

	config = function()
		vim.keymap.set("i", "<c-e>", 'copilot#Accept("\\<CR>")', {
			expr = true,
			replace_keycodes = false,
		})
		vim.g.copilot_no_tab_map = true
	end,
}
