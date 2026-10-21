vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)
vim.keymap.set("n", "<leader>h", function()
  local url = vim.fn.expand("<cfile>")
  -- Use the macOS "open" command
  vim.fn.jobstart({ "open", url }, { detach = true })
end, { desc = "Open URL under cursor" })
