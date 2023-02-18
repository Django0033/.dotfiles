--[[

=====================================================================
==================== READ THIS BEFORE CONTINUING ====================
=====================================================================

Kickstart.nvim is *not* a distribution.

Kickstart.nvim is a template for your own configuration.
  The goal is that you can read every line of code, top-to-bottom, and understand
  what your configuration is doing.

  Once you've done that, you should start exploring, configuring and tinkering to
  explore Neovim!

  If you don't know anything about Lua, I recommend taking some time to read through
  a guide. One possible example:
  - https://learnxinyminutes.com/docs/lua/

  And then you can explore or search through `:help lua-guide`


Kickstart Guide:

I have left several `:help X` comments throughout the init.lua
You should run that command and read that help section for more information.

In addition, I have some `NOTE:` items throughout the file.
These are for you, the reader to help understand what is happening. Feel free to delete
them once you know what you're doing, but they should serve as a guide for when you
are first encountering a few different constructs in your nvim config.

I hope you enjoy your Neovim journey,
- TJ

P.S. You can delete this when you're done too. It's your config now :)
--]]

-- Set <space> as the leader key
-- See `:help mapleader`
--  NOTE: Must happen before plugins are required (otherwise wrong leader will be used)
vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

require('plugins')

-- [[ Setting options ]]
-- See `:help vim.o`
local set = vim.o

set.backup = false -- Create a backup file
set.breakindent = true -- Enable break indent
set.clipboard = 'unnamedplus' -- Sync clipboard between OS and Neovim. See `:help 'clipboard'`
set.colorcolumn = '80' -- Mark the 80th column
set.completeopt = 'menuone,noselect' -- Set completeopt to have a better completion experience
set.conceallevel = 0 -- `` is visible in markdown files
set.cursorline = true -- Highlight current line
set.expandtab = true -- Convert tabs to spaces
-- set.fileencoding = 'utf-8' -- The encoding written to a file
set.foldenable = false
set.hidden = true
set.hlsearch = false -- Set highlight on search
set.ignorecase = true -- Case insensitive searching UNLESS /C or capital in search
set.incsearch = true
set.mouse = 'a' -- Enable mouse mode
set.number = true -- Make line numbers default
set.numberwidth = 2 -- Set number column width to 2
set.pumheight = 9 -- Pop up menu height
set.relativenumber = true -- Set relative numbered lines
set.scrolloff = 9
set.shiftwidth = 4 -- The number of spaces inserted for each indentation
set.sidescrolloff = 9
set.signcolumn = 'yes' -- Keep signcolumn on by default
set.smartcase = true
set.smartindent = true -- Smart indent
set.smarttab = true
set.splitbelow = true -- Force horizontal splits to open below current buffer
set.splitright = true -- Force vertical splits to open to the right of the current buffer
set.swapfile = false  -- Create swap file
set.tabstop = 4 -- Insert 4 paces for a tab
set.termguicolors = true -- NOTE: You should make sure your terminal supports this
set.timeout = true
set.timeoutlen = 300
set.undodir = '/home/django/.vim/undodir'
set.undofile = true -- Save undo history
set.updatetime = 250 -- Decrease update time
set.wrap = true -- Display lines as one long line
set.writebackup = false -- If a file is being edited by another program, it is not allowed to be edited

-- [[ Basic Keymaps ]]

-- Keymaps for better default experience
-- See `:help vim.keymap.set()`
vim.keymap.set({ 'n', 'v' }, '<Space>', '<Nop>', { silent = true })

-- Remap for dealing with word wrap
vim.keymap.set('n', 'k', "v:count == 0 ? 'gk' : 'k'", { expr = true, silent = true })
vim.keymap.set('n', 'j', "v:count == 0 ? 'gj' : 'j'", { expr = true, silent = true })

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

local map = vim.keymap.set
local opts = { noremap = true, silent = true }
local noremap = { noremap = true }

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
map('n', '<leader>q', 'bdel<CR>', opts)

-- Split controls
map('n', '<leader>vs', ':vnew<CR>', opts)
-- map('n', '<leader>s', ':new<CR>', opts)
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

require('plugins-config.telescope-config')
require('plugins-config.nvim-treesitter-config')
require('plugins-config.lsp-config')
require('plugins-config.cmp-config')
require('plugins-config.telekasten-config')
require('plugins-config.vim-illuminate-config')

-- Undotree
-- Keybindings
map('n', '<leader>u', ':UndotreeShow<CR>', noremap)

-- Leap
require('leap').add_default_mappings()

-- Diagnostic keymaps
vim.keymap.set('n', '[d', vim.diagnostic.goto_prev)
vim.keymap.set('n', ']d', vim.diagnostic.goto_next)
vim.keymap.set('n', '<leader>e', vim.diagnostic.open_float)
vim.keymap.set('n', '<leader>q', vim.diagnostic.setloclist)

-- The line beneath this is called `modeline`. See `:help modeline`
-- vim: ts=2 sts=2 sw=2 et
