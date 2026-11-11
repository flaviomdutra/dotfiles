-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
vim.keymap.set("n", "<S-h>", "<cmd>bprevious<cr>", { desc = "Previous buffer" })
vim.keymap.set("n", "<S-l>", "<cmd>bnext<cr>", { desc = "Next buffer" })

for _, mode in ipairs({ "n", "i", "v" }) do
  vim.keymap.set(mode, "<A-Down>", "<A-j>", { remap = true, desc = "Move Down" })
  vim.keymap.set(mode, "<A-Up>", "<A-k>", { remap = true, desc = "Move Up" })
end
