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

-- Resize split
map('n', '<leader>+', ':vertical resize +5<CR>', opts)
map('n', '<leader>-', ':vertical resize -5<CR>', opts)

-- Moving text
map('v', 'J', ':m \'>+1<CR>gv=gv', opts)
map('v', 'K', ':m \'<-2<CR>gv=gv', opts)
map('v', '<', '<gv', opts)
map('v', '>', '>gv', opts)

-- Buffer controls
map('n', '<S-l>', ':bn<CR>', opts)
map('n', '<S-h>', ':bp<CR>', opts)
map('n', '<leader>q', ':bdel<CR>', opts)
-- map('n', '<leader>bq', ":%bd\|e#\|bd#<CR>", opts)

-- map('i', 'ii', '<ESC><ESC>', opts)
-- map('v', 'ii', '<ESC><ESC>', opts)
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
map('n', '<leader><TAB>t', ':tabe<CR>', opts)
map('n', '<leader><TAB>n', ':tabnext<CR>', opts)

-- Split controls
-- map('n', '<leader>vs', ':vnew<CR>', opts)
map('n', '<leader>vs', function()
  require('windows')
  vim.cmd [[vnew]]
end, opts)
-- map('n', '<leader>hs', ':<C-u>split<CR>', opts)
map('n', '<leader>hs', function()
  require('windows')
  vim.cmd [[split]]
  vim.cmd [[enew]]
end, opts)

map('n', '<leader>M', '<C-w>T', opts)
map('n', '<leader>Rv', 'mAZZ<C-w>v`A', opts)
map('n', '<leader>Rh', 'mAZZ<C-w>s`A', opts)

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
map('n', '<leader>ls', ':Lazy sync<CR>', noremap)
-- [[]]
