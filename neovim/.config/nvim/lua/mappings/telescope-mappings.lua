local map = vim.api.nvim_set_keymap
local opts = { noremap = true, silent = true }
-- local noremap = { noremap = true }

map('n', '<leader>ff', ':Telescope find_files<CR>', opts)
map('n', '<leader>fg', ':Telescope live_grep<CR>', opts)
map('n', '<leader>fb', ':Telescope buffers<CR>', opts)
map('n', '<leader>fh', ':Telescope oldfiles<CR>', opts)
map('n', '<leader>fr', ':Telescope frecency<CR>', opts)
