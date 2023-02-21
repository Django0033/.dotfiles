return {
  'nvim-tree/nvim-tree.lua',
  dependencies = {
    'nvim-tree/nvim-web-devicons', -- optional, for file icons
  },
  tag = 'nightly', -- optional, updated every week. (see issue #1193)
  config = function ()
    vim.g.loaded_netrw = 1
    vim.g.loaded_netrwPlugin = 1
    require('nvim-tree').setup{
      actions = {
        open_file = {
          quit_on_open = true
        }
      }
    }
  end
}
