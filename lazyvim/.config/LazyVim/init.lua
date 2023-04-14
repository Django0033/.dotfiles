-- bootstrap lazy.nvim, LazyVim and your plugins
require("config.lazy")

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
