return {
  'BooleanCube/keylab.nvim',
  dependencies = {
    'nvim-lua/plenary.nvim'
  },
  keys = {
    { '<leader>kl', ':KeylabStart<CR>', desc = 'Keylab Start' }
  },
  opts = {
    LINES = 18,
    force_accuracy = true,
    correct_fg = '#B8BB26',
    wrong_bg = '#FB4934'
  }
}
