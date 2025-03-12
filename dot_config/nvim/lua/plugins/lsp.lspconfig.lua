return {
	{
		"williamboman/mason.nvim",

		config = function()
            local mason = require("mason")

			mason.setup({
				ui = {
					border = "rounded",

					icons = {
						package_installed = " ",
						package_pending = " ",
						package_uninstalled = " ",
					},
				},
			})

            -- Keymaps
            local map = vim.keymap.set
            map("n", "<leader>M", "<cmd>Mason<CR>", { desc = "Open Mason" })
		end,
	},
	{
		"neovim/nvim-lspconfig",

		event = "LazyFile",

		config = function()
			require("configs.lspconfig")

			-- Keymaps
			local map = vim.keymap.set
			map("n", "<leader>ch", vim.lsp.buf.hover, { desc = "Hover code" })
			map("n", "<leader>cr", vim.lsp.buf.rename, { desc = "Rename code" })
			map("n", "<leader>cd", vim.lsp.buf.declaration, { desc = "Code go to declaration" })
			map("n", "<leader>cD", vim.lsp.buf.definition, { desc = "Code go to definition" })
			map("n", "<leader>ct", vim.lsp.buf.type_definition, { desc = "Code go to type definition" })
			map("n", "<leader>ci", vim.lsp.buf.implementation, { desc = "Code go to implementation" })
			map("n", "<leader>cs", vim.lsp.buf.signature_help, { desc = "Code show signature help" })
			map("n", "<leader>cR", vim.lsp.buf.references, { desc = "Code show references" })
			map({ "n", "v" }, "<leader>ca", vim.lsp.buf.code_action, { desc = "Code actions" })
			map("n", "<leader>cwa", vim.lsp.buf.add_workspace_folder, { desc = "Code add workspace folder" })
			map("n", "<leader>cwr", vim.lsp.buf.remove_workspace_folder, { desc = "Code remove workspace folder" })
			map("n", "<leader>cwl", function()
				vim.notify(vim.inspect(vim.lsp.buf.list_workspace_folders()), vim.log.levels.INFO)
			end, { desc = "Code list workspace folders" })
			map("n", "<leader>cm", vim.lsp.buf.format, { desc = "Code format document" })
		end,
	},
}
