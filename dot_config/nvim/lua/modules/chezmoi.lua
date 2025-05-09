local M = {}

function M:picker()
	Snacks.picker.files({
		title = "Chezmoi",
		cwd = os.getenv("HOME") .. "/.local/share/chezmoi/",
	})
end

return M
