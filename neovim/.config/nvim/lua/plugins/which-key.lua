return {
  'folke/which-key.nvim',
  event = 'VeryLazy',
  opts = {
    plugins = { spelling = true },
    defaults = {
      mode = { 'n', 'v' },
      ['<leader><tab>'] = { name = 'Tabs' },
      ['<leader>b'] = { name = 'Buffer' },
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

    which_key.register({
      filetype = { 'norg' },
      ['<localleader>i'] = { name = 'Insert' },
      ['<localleader>l'] = { name = 'List' },
      ['<localleader>m'] = { name = 'Mode' },
      ['<localleader>n'] = { name = 'New' },
      ['<localleader>t'] = { name = 'TODO' },

    })
  end
}
