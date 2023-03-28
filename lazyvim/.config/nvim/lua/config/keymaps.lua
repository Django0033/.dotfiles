-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
local map = vim.keymap.set
local opts = { noremap = true, silent = true }
local noremap = { noremap = true }

map("n", "<leader>rv", ":luafile %<CR>", opts)
map("n", ";", ":", noremap)
map("n", "Y", "y$", opts)
map("n", "o", "o<ESC>", opts)
map("n", "O", "O<ESC>", opts)

-- Keep your cursor centered while jumping through search results or joining
-- lines.
map("n", "n", "nzzzv", opts)
map("n", "N", "Nzzzv", opts)
map("n", "J", "mzJ`z", opts)
map("n", "<C-d>", "<C-d>zz", opts)
map("n", "<C-u>", "<C-u>zz", opts)
map("n", "J", "mzJ`z", opts)
