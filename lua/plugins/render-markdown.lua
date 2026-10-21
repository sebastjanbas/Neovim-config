return {
  {
    "MeanderingProgrammer/render-markdown.nvim",
    dependencies = { "nvim-treesitter/nvim-treesitter", "nvim-tree/nvim-web-devicons" },
    ft = { "markdown" },
    config = function(_, opts)
      require("render-markdown").setup(opts)
      vim.keymap.set("n", "<leader>mp", "<cmd>RenderMarkdown toggle<cr>", { desc = "Markdown preview toggle" })
    end,
    opts = {
      heading = {
        enabled = true,
        sign = true,
        width = "full",
        left_pad = 1,
        right_pad = 1,
        min_width = 0,
        border = false,
        icons = { "󰲡 ", "󰲣 ", "󰲥 ", "󰲧 ", "󰲩 ", "󰲫 " },
        backgrounds = {
          "RenderMarkdownH1Bg",
          "RenderMarkdownH2Bg",
          "RenderMarkdownH3Bg",
          "RenderMarkdownH4Bg",
          "RenderMarkdownH5Bg",
          "RenderMarkdownH6Bg",
        },
        foregrounds = {
          "RenderMarkdownH1",
          "RenderMarkdownH2",
          "RenderMarkdownH3",
          "RenderMarkdownH4",
          "RenderMarkdownH5",
          "RenderMarkdownH6",
        },
      },
      code = {
        enabled = true,
        sign = false,
        style = "full",
        position = "left",
        language_pad = 1,
        width = "full",
        left_pad = 2,
        right_pad = 2,
        min_width = 45,
        border = "thin",
        above = "▄",
        below = "▀",
      },
      dash = {
        enabled = true,
        icon = "─",
        width = "full",
      },
      bullet = {
        enabled = true,
        icons = { "●", "○", "◆", "◇" },
        left_pad = 0,
        right_pad = 1,
      },
      checkbox = {
        enabled = true,
        unchecked = { icon = "󰄱 " },
        checked = { icon = "󰱒 " },
      },
      quote = {
        enabled = true,
        icon = "▋",
      },
      link = {
        enabled = true,
        image = "󰥶 ",
        hyperlink = "󰌹 ",
      },
      table = {
        enabled = true,
        style = "full",
        cell = "padded",
      },
    },
  },
}
