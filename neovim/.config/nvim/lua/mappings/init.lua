-- [[ Basic Keymaps ]]
local map = vim.keymap.set
local opts = { noremap = true, silent = true }
local noremap = { noremap = true }

-- Keymaps for better default experience
-- See `:help vim.keymap.set()`
map({ 'n', 'v' }, '<Space>', '<Nop>', { silent = true })

-- Remap for dealing with word wrap
map('n', 'k', "v:count == 0 ? 'gk' : 'k'", { expr = true, silent = true })
map('n', 'j', "v:count == 0 ? 'gj' : 'j'", { expr = true, silent = true })


map('i', 'ii', '<ESC><ESC>:w<CR>', opts)
map('v', 'ii', '<ESC><ESC>', opts)
-- map('n', '<leader>w', ':w<CR>', opts)
map('n', '<leader>rv', ':luafile %<CR>', opts)
map('n', ';', ':', noremap)
map('n', 'Y', 'y$', opts)
map('n', 'o', 'o<ESC>', opts)
map('n', 'O', 'O<ESC>', opts)

-- Change word under the cursor and the next match with `.`
map('n', 'c*', '*``cgn', opts)
map('n', 'c#', '#``cgN', opts)

-- Tab controls
map('n', '<leader>t', ':tabe<CR>', opts)
map('n', '<leader><TAB>', ':tabnext<CR>', opts)

-- Buffer controls
map('n', '<S-l>', ':bn<CR>', opts)
map('n', '<S-h>', ':bp<CR>', opts)
map('n', '<leader>q', ':bdel<CR>', opts)
-- map('n', '<leader>bq', ":%bd\|e#\|bd#<CR>", opts)

-- Split controls
map('n', '<leader>vs', ':vnew<CR>', opts)
-- map('n', '<leader>s', ':<C-u>split<CR>', opts)
map('n', '<C-l>', '<C-w>l', opts)
map('n', '<C-h>', '<C-w>h', opts)
map('n', '<C-j>', '<C-w>j', opts)
map('n', '<C-k>', '<C-w>k', opts)
map('n', '<leader>+', ':vertical resize +5<CR>', opts)
map('n', '<leader>-', ':vertical resize -5<CR>', opts)

-- Keep your cursor centered while jumping through search results or joining
-- lines.
map('n', 'n', 'nzzzv', opts)
map('n', 'N', 'Nzzzv', opts)
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

-- Moving text
map('v', 'J', ':m \'>+1<CR>gv=gv', opts)
map('v', 'K', ':m \'<-2<CR>gv=gv', opts)
map('v', '<', '<gv', opts)
map('v', '>', '>gv', opts)

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

-- [[ Telescope ]]
-- See `:help telescope.builtin`
map('n', '<leader>?', require('telescope.builtin').oldfiles, { desc = '[?] Find recently opened files' })
map('n', '<leader><space>', require('telescope.builtin').buffers, { desc = '[ ] Find existing buffers' })
map('n', '<leader>/', function()
  -- You can pass additional configuration to telescope to change theme, layout, etc.
  require('telescope.builtin').current_buffer_fuzzy_find(require('telescope.themes').get_dropdown {
    winblend = 10,
    previewer = false,
  })
end, { desc = '[/] Fuzzily search in current buffer' })

map('n', '<leader>sf', require('telescope.builtin').find_files, { desc = '[S]earch [F]iles' })
map('n', '<leader>sh', require('telescope.builtin').help_tags, { desc = '[S]earch [H]elp' })
map('n', '<leader>sw', require('telescope.builtin').grep_string, { desc = '[S]earch current [W]ord' })
map('n', '<leader>sg', require('telescope.builtin').live_grep, { desc = '[S]earch by [G]rep' })
map('n', '<leader>sd', require('telescope.builtin').diagnostics, { desc = '[S]earch [D]iagnostics' })
-- [[]]

-- [[ Treesitter ]]
-- Diagnostic keymaps
map('n', '[d', vim.diagnostic.goto_prev)
map('n', ']d', vim.diagnostic.goto_next)
map('n', '<leader>e', vim.diagnostic.open_float)
-- vim.keymap.set('n', '<leader>q', vim.diagnostic.setloclist)
-- [[]]

-- [[ Telekasten ]]
map('i', '[[', '<cmd>:lua require("telekasten").insert_link({i=true})<CR>', opts)

local wk = require('which-key')

wk.register({
    z = {
        name = 'telekasten',
        f = {'<cmd>lua require("telekasten").find_notes()<CR>', 'Find Notes'},
        F = {'<cmd>lua require("telekasten").find_friends()<CR>', 'Find Friends'},
        g = {'<cmd>lua require("telekasten").search_notes()<CR>', 'Grep through Notes'},
        n = {'<cmd>lua require("telekasten").new_note()<CR>', 'New Note'},
        N = {'<cmd>lua require("telekasten").new_templated_note()<CR>', 'New Templated Note'},
        z = {'<cmd>lua require("telekasten").follow_link()<CR>', 'Follow Link'},
        b = {'<cmd>lua require("telekasten").show_backlinks()<CR>', 'Show Backlinks'},
        a = {'<cmd>lua require("telekasten").show_tags()<CR>', 'Show Tags'},
        r = {'<cmd>lua require("telekasten").rename_note()<CR>', 'Rename note'},
        c = {'<cmd>lua require("telekasten").show_calendar()<CR>', 'Show calendar'},
        t = {'<cmd>lua require("telekasten").toggle_todo()<CR>', 'Toggle todo'},
    },
}, {prefix = '<leader>'})

wk.register({
    z = {
        name = 'telekasten',
        t = {'<cmd>\'<,\'>lua require("telekasten").toggle_todo()<CR>', 'Toggle todo'},
    },
}, {mode = 'v'})
-- [[]]

-- [[ Lazy ]]
map('n', '<leader>ls', ':Lazy sync<CR>', noremap)
-- [[]]

-- [[ Neogit ]]
map('n', '<leader>gs', ':Neogit<CR>', opts)
-- [[]]
