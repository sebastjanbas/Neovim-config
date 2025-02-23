return {
	{
		"NvChad/nvim-colorizer.lua",
		config = function()
			require("colorizer").setup({
				user_default_options = {
					names = false, -- Disable color names like 'red', 'blue'
					tailwind = true, -- Enable Tailwind color preview
					rgb_fn = true, -- Enable rgb(...) functions
					hsl_fn = true, -- Enable hsl(...) functions
				},
			})
		end,
	},
	{
		"roobert/tailwindcss-colorizer-cmp.nvim",
		config = function()
			require("tailwindcss-colorizer-cmp").setup({
				color_square_width = 2,
			})
		end,
	},
}
