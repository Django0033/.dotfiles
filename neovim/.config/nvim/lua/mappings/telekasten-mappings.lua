local map = vim.api.nvim_set_keymap
local opts = { noremap = true, silent = true }

map('n', '<leader>zf', ':lua require("telekasten").find_notes()<CR>', opts)
map('n', '<leader>zF', ':lua require("telekasten").find_friends()<CR>', opts)
map('n', '<leader>zg', ':lua require("telekasten").search_notes()<CR>', opts)
map('n', '<leader>zn', ':lua require("telekasten").new_note()<CR>', opts)
map('n', '<leader>zN', ':lua require("telekasten").new_templated_note()<CR>', opts)
map('n', '<leader>zz', ':lua require("telekasten").follow_link()<CR>', opts)
map('n', '<leader>zb', ':lua require("telekasten").show_backlinks()<CR>', opts)
map('n', '<leader>za', ':lua require("telekasten").show_tags()<CR>', opts)
-- map('n', '<leader>zl', ':lua require("telekasten").insert_link()<CR>', opts)
map('n', '<leader>zr', ':lua require("telekasten").rename_note()<CR>', opts)

map('n', '<leader>z', ':lua require("telekasten").panel()<CR>', opts)

map('i', '[[', '<cmd>:lua require("telekasten").insert_link({i=true})<CR>', opts)
