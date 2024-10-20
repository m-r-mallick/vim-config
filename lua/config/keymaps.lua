local scripts = require("scripts")
-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

local map = vim.keymap.set

map("v", "<C-c>", '"+y', { desc = "Copy to system clipboard", noremap = true })
map({ "v", "n" }, "<C-a>", "ggVG", { desc = "Select all text", noremap = true })

-- Custom scripts mappings
local custom_script_mappings = {
  ["nl"] = { scripts.log.create_new_log, "Create a new log file" },
  ["nm"] = { scripts.log.create_meeting_log, "Create a new meeting log" },
  ["nd"] = { scripts.log.create_debug_log, "Create a new debug log" },
}

for key, mapping in pairs(custom_script_mappings) do
  map("n", "<leader>cust" .. key, mapping[1], { desc = mapping[2], silent = true, noremap = true })
end
