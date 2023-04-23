-- [[ Basic Keymaps ]]
local map = vim.keymap.set
local opts = { noremap = true, silent = true }
local noremap = { noremap = true }

-- Keymaps for better default experience
-- See `:help vim.keymap.set()`
map({ 'n', 'v' }, '<Space>', '<Nop>', { silent = true })

-- Better up and down / Remap for dealing with word wrap
map('n', 'k', "v:count == 0 ? 'gk' : 'k'", { expr = true, silent = true })
map('n', 'j', "v:count == 0 ? 'gj' : 'j'", { expr = true, silent = true })

-- Move to split
-- map('n', '<C-l>', '<C-w>l', opts)
-- map('n', '<C-h>', '<C-w>h', opts)
-- map('n', '<C-j>', '<C-w>j', opts)
-- map('n', '<C-k>', '<C-w>k', opts)


-- Moving text
map('v', 'J', ':m \'>+1<CR>gv=gv', opts)
map('v', 'K', ':m \'<-2<CR>gv=gv', opts)
map('v', '<', '<gv', opts)
map('v', '>', '>gv', opts)

-- Buffer controls
map('n', '<S-l>', ':bn<CR>', opts)
map('n', '<S-h>', ':bp<CR>', opts)
map('n', '<leader>bd', ':bdel<CR>', { noremap = true, silent = true, desc = 'Buffer Delete' })
map('n', '<leader>bD', function()
  vim.cmd [[%bd|e#|bd#]]
end, { noremap = true, silent = true, desc = 'Buffer Delete Others' })
map('n', '<leader>bsv', function()
  require('windows')
  vim.cmd [[vnew]]
end, { noremap = true, silent = true, desc = 'Buffer Split Vertical' })
map('n', '<leader>bsh', function()
  require('windows')
  vim.cmd [[split]]
  vim.cmd [[enew]]
end, { noremap = true, silent = true, desc = 'Buffer Split Horizontal' })
map('n', '<leader>bs+', ':vertical resize +5<CR>', { noremap = true, silent = true, desc = 'Buffer Split +5' })
map('n', '<leader>bs-', ':vertical resize -5<CR>', { noremap = true, silent = true, desc = 'Buffer Split -5' })


-- map('i', 'ii', '<ESC><ESC>', opts)
-- map('v', 'ii', '<ESC><ESC>', opts)
map({ 'n', 'i', 'v', 's' }, '<C-s>', '<cmd>w<CR><esc>', opts)
map('n', '<leader>rc', ':luafile %<CR>', { noremap = true, silent = true, desc = 'Reload Current File' })
map('n', '<leader>ri', ':luafile $MYVIMRC<CR>', { noremap = true, silent = true, desc = 'Reload $MYVIMRC' })
map('n', ';', ':', noremap)
map('n', 'Y', 'y$', opts)
map('n', 'o', 'o<ESC>', opts)
map('n', 'O', 'O<ESC>', opts)

-- Change word under the cursor and the next match with `.`
map('n', 'c*', '*``cgn', { noremap = true, silent = true, desc = 'Change Next' })
map('n', 'c#', '#``cgN', { noremap = true, silent = true, desc = 'Change Previous' })

-- Tab controls
map('n', '<leader><TAB>t', ':tabe<CR>', { noremap = true, silent = true, desc = 'Tab New' })
map('n', '<leader><TAB>n', ':tabnext<CR>', { noremap = true, silent = true, desc = 'Tab Next' })

-- map('n', '<leader>M', '<C-w>T', opts)
-- map('n', '<leader>Rv', 'mAZZ<C-w>v`A', opts)
-- map('n', '<leader>Rh', 'mAZZ<C-w>s`A', opts)

-- Keep your cursor centered while jumping through search results or joining
-- lines.
map('n', 'n', 'nzzzv', opts)
map('n', 'N', 'Nzzzv', opts)
map('n', 'J', 'mzJ`z', opts)
map('n', '<C-d>', '<C-d>zz', opts)
map('n', '<C-u>', '<C-u>zz', opts)
map('n', 'J', 'mzJ`z', opts)

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


-- [[ Highlight on yank ]]
-- See `:help vim.highlight.on_yank()`
local highlight_group = vim.api.nvim_create_augroup('YankHighlight', { clear = true })
vim.api.nvim_create_autocmd('TextYankPost', {
  callback = function()
    vim.highlight.on_yank()
  end,
  group = highlight_group,
  pattern = '*',
})

-- [[ Lazy ]]
map('n', '<leader>lz', ':Lazy<CR>', { noremap = true, desc = 'Lazy' })
map('n', '<leader>ls', ':Lazy sync<CR>', { noremap = true, desc = 'Lazy Sync' })
-- [[]]
