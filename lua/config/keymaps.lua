-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
vim.keymap.set("n", "<leader>se", function()
  require("scissors").editSnippet()
end, { desc = "Edit snippet" })

-- When used in visual mode prefills the selection as body.
vim.keymap.set({ "n", "x" }, "<leader>sA", function()
  require("scissors").addNewSnippet()
end, { desc = "Create new snippet" })

vim.keymap.set("n", "<leader>cT", "<cmd>VimtexCompile<cr>", { desc = "Compile tex" })
