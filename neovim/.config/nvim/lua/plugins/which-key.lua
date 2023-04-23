return {
  'folke/which-key.nvim',
  event = 'VeryLazy',
  opts = {
    plugins = { spelling = true },
    defaults = {
      mode = { 'n', 'v' },
      ['<leader><tab>'] = { name = 'Tabs' },
      ['<leader>b'] = { name = 'Buffer', s = { name = 'Split' } },
      ['<leader>z'] = { name = 'Telekasten' },
      ['<leader>s'] = { name = 'Spectre' },
      ['<leader>d'] = { name = 'DAP' },
      ['<leader>g'] = { name = 'Git' },
      ['<leader>h'] = { name = 'Harpoon' },
      ['<leader>l'] = { name = 'Lazy' },
      ['<leader>r'] = { name = 'Reload' },
    }
  },
  config = function(_, opts)
    local which_key = require('which-key')
    which_key.setup(opts)
    which_key.register(opts.defaults)
  end
}
