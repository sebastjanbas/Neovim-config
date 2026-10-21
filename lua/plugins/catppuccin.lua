return {
  { "catppuccin/nvim", name = "catppuccin", priority = 1000, config = function()
    require("catppuccin").setup({
      integrations = {
        alpha = true,
        cmp = true,
        gitsigns = true,
        lualine = true,
        native_lsp = { enabled = true },
        neotree = true,
        render_markdown = true,
        telescope = { enabled = true },
        treesitter = true,
        which_key = true,
      },
    })
    vim.cmd.colorscheme "catppuccin"
  end },
}
