return {
  "anuvyklack/windows.nvim",
  dependencies = {
    "anuvyklack/middleclass",
    "anuvyklack/animation.nvim"
  },
  keys = {
    { '<leader>bz', '<cmd>WindowsMaximize<CR>', desc = 'Buffer Maximize' },
    { '<leader>b=', '<cmd>WindowsEqualize<CR>', desc = 'Buffer Equalize' },
    { '<leader>bt', '<cmd>WindowsToggleAutowidth<CR>', desc = 'Toggle Autowidth' },
  },
  config = function()
    vim.o.winwidth = 10
    vim.o.winminwidth = 10
    vim.o.equalalways = false
    require('windows').setup()
  end
}
