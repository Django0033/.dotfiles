return {
  'folke/which-key.nvim',
  event = 'VeryLazy',
  opts = {
    plugins = { spelling = true },
    defaults = {
      mode = { 'n', 'v' },
      ['<leader><tab>'] = { name = '+tabs' },
      ['<leader>b'] = { name = '+buffer' },
      ['<leader>z'] = { name = '+Telekasten' },
      ['<leader>s'] = { name = '+Spectre' },
    }
  },
  config = function(_, opts)
    local which_key = require('which-key')
    which_key.setup(opts)
    which_key.register(opts.defaults)
  end
}
