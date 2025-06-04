local map = vim.keymap.set
local opts = { noremap = true, silent = true }
local noremap = { noremap = true }
local cmd = vim.cmd

vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

-- Better up and down / Remap for dealing with word wrap
map('n', 'k', "v:count == 0 ? 'gk' : 'k'", { expr = true, silent = true })
map('n', 'j', "v:count == 0 ? 'gj' : 'j'", { expr = true, silent = true })

-- Buffer controls
map('n', '<S-l>', function()
    cmd [[bn]]
end, opts
)

map('n', '<S-h>', function()
    cmd [[bp]]
end, opts
)

map('n', '<leader>bd', function()
    cmd [[bdel]]
end, {noremap = true, silent = true, desc = 'Buffer Delete'}
)

map('n', '<leader>bD', function()
    cmd [[%bd|e#|bd#]]
end, {noremap = true, silent = true, desc = 'Buffer Delete Others'}
)

map('n', '<leader>bv', function()
    cmd [[vnew]]
end, {noremap = true, silent = true, desc = 'Buffer Split Vertical'}
)

map('n', '<leader>bh', function()
    cmd [[split|enew]]
end, {noremap = true, silent = true, desc = 'Buffer Split Horizontal'}
)

map('n', '<leader>b+', function()
    cmd [[vertical resize +5]]
end, {noremap = true, silent = true, desc = 'Buffer Split +5'}
)

map('n', '<leader>b-', function()
    cmd [[vertical resize -5]]
end, {noremap = true, silent = true, desc = 'Buffer Split -5'}
)

map('i', '<esc>', '<esc><esc><cmd>w<cr>', opts)

map('n', '<leader>rc', function()
    cmd [[luafile %]]
end, {noremap = true, silent = false, desc = 'Reload Current File'}
)

map('n', '<leader>ri', function()
    cmd [[luafile $MYVIMRC]]
end, {noremap = true, silent = false, desc = 'Reload $MYVIMRC'}
)

map('n', ';', ':', noremap)
map('n', 'Y', 'y$', noremap)
map('n', 'o', 'o<esc>', opts)
map('n', 'O', 'O<esc>', opts)

-- Change word under the cursor and the next match with `.`
-- map('n', 'c*', '*``cgn', { noremap = true, silent = true, desc = 'Change Next' })
-- map('n', 'c#', '#``cgN', { noremap = true, silent = true, desc = 'Change Previous' })

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

-- Increment/decrement
map('n', '+', '<c-a>', opts)
map('n', '-', '<c-x>', opts)

-- Move window
map('n', '<c-h>', '<c-w>h', opts)
map('n', '<c-l>', '<c-w>l', opts)
map('n', '<c-j>', '<c-w>j', opts)
map('n', '<c-k>', '<c-w>k', opts)

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
map('n', '<leader>lz', function ()
    cmd [[Lazy]]
end, { noremap = true, desc = 'Lazy' })

map('n', '<leader>ls', function ()
    cmd [[Lazy sync]]
end, { noremap = true, desc = 'Lazy Sync' })
