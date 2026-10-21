return {
	{
		-- this is for lorem text generation
		"derektata/lorem.nvim",
		config = function()
			require("lorem").opts({
				sentenceLength = "medium",
				comma_chance = 0.2,
				max_commas_per_sentence = 2,
			})
		end,
	},
	-- {
	-- 	"numToStr/Comment.nvim",
	-- 	config = function()
	-- 		require("Comment").setup()
	-- 	end,
	-- },
	{
		"folke/ts-comments.nvim",
		opts = {},
		event = "VeryLazy",
		enabled = vim.fn.has("nvim-0.10.0") == 1,
	},
	{
		"folke/todo-comments.nvim",
		cmd = { "TodoTrouble", "TodoTelescope" },
		opts = {},
    -- stylua: ignore
    keys = {
      { "]t",         function() require("todo-comments").jump_next() end,              desc = "Next Todo Comment" },
      { "[t",         function() require("todo-comments").jump_prev() end,              desc = "Previous Todo Comment" },
      { "<leader>xt", "<cmd>Trouble todo toggle<cr>",                                   desc = "Todo (Trouble)" },
      { "<leader>xT", "<cmd>Trouble todo toggle filter = {tag = {TODO,FIX,FIXME}}<cr>", desc = "Todo/Fix/Fixme (Trouble)" },
      { "<leader>st", "<cmd>TodoTelescope<cr>",                                         desc = "Todo" },
      { "<leader>sT", "<cmd>TodoTelescope keywords=TODO,FIX,FIXME<cr>",                 desc = "Todo/Fix/Fixme" },
    },
	},
	{
		"kevinhwang91/promise-async", -- Dependency for nvim-ufo
	},
	{
		"kevinhwang91/nvim-ufo",
		dependencies = { "kevinhwang91/promise-async" },
		config = function()
			vim.o.foldcolumn = "0" -- Display folding column
			vim.o.foldlevel = 99 -- Open most folds by default
			vim.o.foldlevelstart = 99
			vim.o.foldenable = true

			-- Keymaps for folding
			vim.keymap.set("n", "zR", require("ufo").openAllFolds)
			vim.keymap.set("n", "zM", require("ufo").closeAllFolds)

			-- UFO configuration
			require("ufo").setup({
				provider_selector = function(_, _, _)
					return { "lsp", "indent" }
				end,
			})
		end,
	},
}
