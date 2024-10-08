-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

local map = vim.keymap.set

map("v", "<C-c>", '"+y', { desc = "Copy to system clipboard", noremap = true })
map({ "v", "n" }, "<C-a>", "ggVG", { desc = "Select all text", noremap = true })
