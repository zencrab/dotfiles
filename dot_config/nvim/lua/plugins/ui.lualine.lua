return {
	"nvim-lualine/lualine.nvim",

	event = "LazyFile",

	dependencies = { "nvim-tree/nvim-web-devicons" },

	config = function()
		local function get_color(color)
			local palette = require("catppuccin.palettes").get_palette("mocha")
			return palette[color]
		end

		local function get_mode()
			local mode_map = {
				n = "NORMAL",
				i = "INSERT",
				v = "VISUAL",
				V = "V-LINE",
				[""] = "V-BLOCK",
				c = "COMMAND",
				R = "REPLACE",
				t = "TERMINAL",
			}
			return " " .. (mode_map[vim.fn.mode()] or "UNKNOWN")
		end

		local function cursor_location()
			local progress = math.floor((tonumber(vim.fn.line(".")) / tonumber(vim.fn.line("$"))) * 100)
			local location = vim.fn.line(".") .. ":" .. vim.fn.col(".")
			return progress .. "%% " .. location
		end

		local function get_lsp_status()
			local clients = vim.lsp.get_clients({ bufnr = 0 })
			return (#clients > 0) and " LSP" or " LSP"
		end

		local function get_lsp_color()
			local clients = vim.lsp.get_clients({ bufnr = 0 })
			return { fg = (#clients > 0) and get_color("green") or get_color("red") }
		end

		local function get_file_icon_and_name()
			local filename = vim.fn.expand("%:t")
			local ext = vim.fn.expand("%:e")
			local icon = require("nvim-web-devicons").get_icon(filename, ext, { default = true })
			return icon .. " " .. filename
		end

		local function get_cwd_name()
			return "󰉖 " .. vim.fn.fnamemodify(vim.fn.getcwd(), ":t")
		end

		require("lualine").setup({
			options = {
				theme = "catppuccin",
				section_separators = { left = "", right = "" },
				component_separators = "",
				ignore_focus = { "neo-tree" },
				globalstatus = true,
			},
			sections = {
				lualine_a = {
					{
						get_mode,
						separator = { left = "", right = "" },
						color = { gui = "bold" },
					},
				},

				lualine_b = {
					{
						cursor_location,
						color = { fg = get_color("subtext0") },
						padding = { left = 1, right = 0 },
					},
				},

				lualine_c = {
					"%=",
					{
						"diff",
						symbols = { added = " ", modified = " ", removed = " " },
					},
				},

				lualine_x = {
					{
						get_lsp_status,
						color = get_lsp_color,
						on_click = function()
							vim.cmd("LspInfo")
						end,
					},
				},

				lualine_y = {
					{
						get_file_icon_and_name,
						color = { fg = get_color("crust"), bg = get_color("maroon"), gui = "bold" },
					},
				},

				lualine_z = {
					{
						get_cwd_name,
						separator = { left = "", right = "" },
						color = { bg = get_color("rosewater"), gui = "bold" },
					},
				},
			},
		})
	end,
}
