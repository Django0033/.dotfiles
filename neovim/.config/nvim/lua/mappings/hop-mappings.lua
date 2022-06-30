local map = vim.api.nvim_set_keymap
local opts = { noremap = true, silent = true }

map('n', '<leader>hc', ':HopChar2<CR>', opts)
map('n', '<leader>l', ':HopWordCurrentLineAC<CR>', opts)
map('n', '<leader>h', ':HopWordCurrentLineBC<CR>', opts)
map('n', '<leader>j', ':HopLineAC<CR>', opts)
map('n', '<leader>k', ':HopLineBC<CR>', opts)
