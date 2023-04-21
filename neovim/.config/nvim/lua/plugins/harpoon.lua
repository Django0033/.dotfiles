return {
  'ThePrimeagen/harpoon',
  dependencies = { 'nvim-lua/plenary.nvim' },
  lazy = true,

  keys = {
    {'<leader>hm', '<cmd>lua require("harpoon.mark").add_file()<CR>', desc = 'Harpoon Mark' },
    {'<leader>ha', '<cmd>lua require("harpoon.ui").toggle_quick_menu()<CR>', desc = 'Harpoon' }
  },
  -- init = function ()
  --   local ok, which_key = pcall(require, 'which-key')
  --   if not ok then
  --     return
  --   end
  --
  --   which_key.register({
  --     h = {
  --       name = 'Harpoon',
  --       a = {'<cmd>lua requiere("harpoon.mark").add_file()<CR>', '[A]dd File'}
  --     }
  --   })
  -- end,
}
