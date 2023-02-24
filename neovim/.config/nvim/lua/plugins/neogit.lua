return {
  'TimUntersberger/neogit',
  dependencies = {
    'nvim-lua/plenary.nvim',
    'sindrets/diffview.nvim',
  },
  -- lazy = true,
  keys = {
    {'<leader>gs', ':Neogit<CR>'}
  },
  config = function ()
    require('neogit').setup {
      integrations = {
        diffview = true
      },
    }
  end
}
