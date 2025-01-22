local scripts = require("scripts")

-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

local map = vim.keymap.set

map("v", "<C-c>", '"+y', { desc = "Copy to system clipboard", noremap = true })
map({ "v", "n" }, "<C-a>", "ggVG", { desc = "Select all text", noremap = true })

-- Custom scripts mappings
local custom_script_mappings = {
  ["nl"] = { "n", scripts.log.create_new_log, "Create a new log file" },
  ["nm"] = { "n", scripts.log.create_meeting_log, "Create a new meeting log" },
  ["nd"] = { "n", scripts.log.create_debug_log, "Create a new debug log" },
  ["ns"] = { "v", scripts.log.create_code_snippet_log, "Create a new code snippet log" },
}

for key, mapping in pairs(custom_script_mappings) do
  map(mapping[1], "<leader>cust" .. key, mapping[2], { desc = mapping[3], silent = true, noremap = true })
end
