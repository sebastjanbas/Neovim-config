return {
	{
		"williamboman/mason.nvim",
		config = function()
			require("mason").setup()
		end,
	},
	{
		"williamboman/mason-lspconfig.nvim",
		config = function()
			require("mason-lspconfig").setup({
				ensure_installed = { "lua_ls", "ts_ls", "html", "clangd" },
			})
		end,
	},
	{
		"neovim/nvim-lspconfig",
		config = function()
			local capabilities = require("cmp_nvim_lsp").default_capabilities()

			-- shared defaults for every server (replaces per-server capabilities)
			vim.lsp.config("*", { capabilities = capabilities })

			-- turn the servers on (replaces the six .setup{} calls)
			vim.lsp.enable({ "lua_ls", "html", "tailwindcss", "ts_ls", "clangd", "jsonls" })

			vim.diagnostic.config({
				virtual_text = { source = true },
				float = {
					focusable = false,
					border = "rounded",
					source = true,
				},
				signs = true,
				underline = true,
				update_in_insert = false,
			})

			vim.keymap.set("n", "<M-CR>", vim.diagnostic.open_float, { desc = "Show diagnostic float" })
			vim.keymap.set("n", "<M-h>", function() vim.diagnostic.jump({ count = -1, float = true }) end, { desc = "Prev diagnostic" })
			vim.keymap.set("n", "<M-l>", function() vim.diagnostic.jump({ count = 1, float = true }) end, { desc = "Next diagnostic" })
			vim.keymap.set("n", "K", vim.lsp.buf.hover, {})
			vim.keymap.set("n", "gd", vim.lsp.buf.definition, {})
			vim.keymap.set({ "n", "v" }, "<leader>ca", vim.lsp.buf.code_action, {})
		end,
	},
}
