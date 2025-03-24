return {
  {
-- this is for lorem text generation
    'derektata/lorem.nvim',
  config = function()
      require('lorem').opts {
          sentenceLength = "medium",
          comma_chance = 0.2,
          max_commas_per_sentence = 2,
      }
  end
  },
	{
		"numToStr/Comment.nvim",
    config = function()
      require('Comment').setup()
    end
	},
}
