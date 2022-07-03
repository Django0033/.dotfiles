vim.g.mapleader = ' '

require('mappings.nvim-lspconfig-mappings')
require('mappings.gitsigns-mappings')
require('mappings.telescope-mappings')
require('mappings.hop-mappings')
require('mappings.neogit-mappings')
require('mappings.telekasten-mappings')

local map = vim.api.nvim_set_keymap
local opts = { noremap = true, silent = true }
local noremap = { noremap = true }

map('i', 'ii', '<ESC><ESC>:w<CR>', opts)
map('n', '<leader>w', ':w<CR>', opts)
map('n', '<leader>rv', ':luafile %<CR>', opts)
map('n', ';', ':', noremap)
map('n', 'Y', 'y$', opts)
map('n', 'o', 'o<ESC>', opts)
map('n', 'O', 'O<ESC>', opts)

-- Change word under the cursor and the next match with `.`
map('n', 'c*', '*``cgn', opts)
map('n', 'c#', '#``cgN', opts)

-- Tab controls
-- map('n', '<leader>t', ':tabe<CR>', opts)
-- map('n', '<leader><TAB>', ':tabnext<CR>', opts)

-- Buffer controls
map('n', '<S-l>', ':bn<CR>', opts)
map('n', '<S-h>', ':bp<CR>', opts)
map('n', '<leader>q', ':bdel<CR>', opts)
-- map('n', '<leader>bq', ':%bd\|e#\|bd#<CR>', opts)

-- Split controls
map('n', '<leader>vs', ':<C-u>vsplit<CR>', opts)
map('n', '<leader>s', ':<C-u>split<CR>', opts)
map('n', '<C-l>', '<C-w>l', opts)
map('n', '<C-h>', '<C-w>h', opts)
map('n', '<C-j>', '<C-w>j', opts)
map('n', '<C-k>', '<C-w>k', opts)
map('n', '<leader>+', ':vertical resize +5<CR>', opts)
map('n', '<leader>-', ':vertical resize -5<CR>', opts)

-- Break points for undo
map('i', ',', ',<C-g>u', opts)
map('i', '.', '.<C-g>u', opts)
map('i', '!', '!<C-g>u', opts)
map('i', '?', '?<C-g>u', opts)
map('i', ')', ')<C-g>u', opts)
map('i', ']', ']<C-g>u', opts)
map('i', '}', '}<C-g>u', opts)
map('i', '>', '><C-g>u', opts)
map('i', '\'', '\'<C-g>u', opts)
map('i', '"', '"<C-g>u', opts)
map('i', ':', ':<C-g>u', opts)

-- Moving text
map('v', 'J', ':m \'>+1<CR>gv=gv', opts)
map('v', 'K', ':m \'<-2<CR>gv=gv', opts)
map('v', '<', '<gv', opts)
map('v', '>', '>gv', opts)

-- Keep your cursor centered while jumping through search results or joining
-- lines.
map('n', 'n', 'nzzzv', opts)
map('n', 'N', 'Nzzzv', opts)
map('n', 'J', 'mzJ`z', opts)

-- Nvim-Tree
map('n', '<leader>n', ':NvimTreeToggle<CR> :set relativenumber<CR>', opts)

-- Packer
map('n', '<leader>ps', ':PackerSync<CR>', opts)
