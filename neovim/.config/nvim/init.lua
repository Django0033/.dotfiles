vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

-- Install package manager
--    https://github.com/folke/lazy.nvim
--    `:help lazy.nvim.txt` for more info
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

-- NOTE: Here is where you install your plugins.
--  You can configure plugins using the `config` key.
--
--  You can also configure plugins after the setup call,
--    as they will be available in your neovim runtime.
require('lazy').setup('plugins')
require('settings')
require('mappings')

local status, _ = pcall(vim.cmd, 'colorscheme dracula')
if not status then
  print('Colorscheme not found!')
  return
end

-- [[ Write Mode ]]
-- z= to correct words
-- ]s to go to the next wrong word
-- gq<CR> formats current line
function Setup_spell()
  vim.opt_local.spell = true
  vim.opt_local.spelllang = 'en,es'
  vim.opt_local.formatoptions:append('t1')
  vim.opt_local.textwidth = 80
end

vim.api.nvim_create_user_command('SetupSpell', 'lua Setup_spell()', {})

-- The line beneath this is called `modeline`. See `:help modeline`
-- vim: ts=2 sts=2 sw=2 et
