local set = vim.opt

set.backup = false                              -- Create a backup file
set.clipboard = set.clipboard + 'unnamedplus'   -- Allow neovim to access the system clipboard
set.colorcolumn = '80'                          -- Mark the 80th column
set.conceallevel = 0                            -- `` is visible in markdown files
set.cursorline = true                           -- Highlight current line
set.foldenable = false
set.expandtab = true                            -- Convert tabs to spaces
set.fileencoding = 'utf-8'                      -- The encoding written to a file
set.hidden = true
set.hlsearch = false                            -- Highlight previous search pattern
set.ignorecase = true                           -- Ignore case in search patterns
set.incsearch = true
set.mouse = 'a'                                 -- Allow the mouse to be used in neovim
set.number = true                               -- Set numbered lines
set.numberwidth = 2                             -- Set number column width to 2
set.pumheight = 10                              -- Pop up menu height
set.relativenumber = false                       -- Set relative numbered lines
set.scrolloff = 9
set.shiftwidth = 4                              -- The number of spaces inserted for each indentation
set.showmode = false                            -- Show mode in cmd line
-- set.showtabline = 2                             -- Show the tab line
set.sidescrolloff = 9
set.signcolumn = 'yes'                          -- Always show the sign column
set.smartcase = true
set.smartindent = true                          -- Smart indent
set.smarttab = true
set.splitbelow = true                           -- Force horizontal splits to open below current buffer
set.splitright = true                           -- Force vertical splits to open to the right of the current buffer
set.swapfile = false                            -- Create swap file
set.tabstop = 4                                 -- Insert 4 paces for a tab
set.termguicolors = true                        -- Set term gui colors
set.timeoutlen = 1000                           -- Time to wait for a mapped sequence to complete
set.undodir = '/home/django/.vim/undodir'
set.undofile = true                             -- Enable persistent undo
set.updatetime = 300                            -- Faster completion
set.wrap = true                                -- Display lines as one long line
set.writebackup = false                         -- If a file is being edited by another program, it is not allowed to be edited

require('plugins')

vim.cmd 'colorscheme dracula'

vim.g.mapleader = ' '

local map = vim.api.nvim_set_keymap
local opts = { noremap = true, silent = true }
local noremap = { noremap = true }

map('i', 'ii', '<ESC><ESC>:w<CR>', opts)
map('v', 'ii', '<ESC><ESC>', opts)
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
-- map('n', '<leader>bq', ":%bd\|e#\|bd#<CR>", opts)

-- Split controls
map('n', '<leader>vs', ':<C-u>vsplit<CR>', opts)
map('n', '<leader>s', ':<C-u>split<CR>', opts)
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

-- Packer
map('n', '<leader>ps', ':PackerSync<CR>', opts)

-- LSPConfig
require'lspconfig'.pyright.setup{}
require'lspconfig'.sumneko_lua.setup{}

-- Leap
require('leap').add_default_mappings()

-- Lualine
-- Config
require('lualine').setup()

-- Undotree
-- Keybindings
map('n', '<leader>u', ':UndotreeShow<CR>', noremap)

-- Vifm
-- Keybindings
map('n', '<leader>vi', ':EditVifm<CR>', noremap)

-- Telescope
-- Keybindings
map('n', '<leader>ff', ':Telescope find_files<CR>', opts)
map('n', '<leader>fg', ':Telescope live_grep<CR>', opts)
map('n', '<leader>fb', ':Telescope buffers<CR>', opts)
map('n', '<leader>fh', ':Telescope oldfiles<CR>', opts)
map('n', '<leader>fr', ':Telescope frecency<CR>', opts)

require('plugins-config.barbar-config')
require('plugins-config.telekasten-config')
-- 
-- require('plugins-config.coc-config')
require('plugins-config.neogit-config')
require('plugins-config.nvim-treesitter-config')
require('plugins-config.vim-illuminate-config')
require('plugins-config.cmp-config')
