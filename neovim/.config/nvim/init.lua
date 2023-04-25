vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

local lazypath = vim.fn.stdpath 'data' .. '/lazy/lazy.nvim'
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system {
    'git',
    'clone',
    '--filter=blob:none',
    'https://github.com/folke/lazy.nvim.git',
    '--branch=stable', -- latest stable release
    lazypath,
  }
end
vim.opt.rtp:prepend(lazypath)

require('settings')
require('lazy').setup('plugins')
require('mappings')

-- local ok, _ = pcall(vim.cmd, 'colorscheme gruvbox-material')
-- if not ok then
--   print('Colorscheme not found!')
--   return
-- end

--[[ Write Mode ]]
--[[ z= to correct words
]s to go to the next wrong word
gq<CR> formats current line ]]
local set = vim.opt_local
function Setup_spell()
  set.spell = true
  set.spelllang = 'en,es'
  set.formatoptions:append('t1')
  set.textwidth = 80
end

local createUserCommand = vim.api.nvim_create_user_command
createUserCommand('SetupSpell', 'lua Setup_spell()', {})

local createAutocommand = vim.api.nvim_create_autocmd
local whenBufEnter = { 'BufEnter', 'BufWinEnter' }
local isMarkdown = '*.md'
createAutocommand(whenBufEnter, {
  pattern = { isMarkdown },
  command = 'SetupSpell'
})

vim.g.markdown_fenced_languages = { 'python' }

-- The line beneath this is called `modeline`. See `:help modeline`
-- vim: ts=2 sts=2 sw=2 et
