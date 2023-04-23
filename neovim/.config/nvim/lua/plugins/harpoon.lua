return {
  'ThePrimeagen/harpoon',
  dependencies = { 'nvim-lua/plenary.nvim' },
  lazy = true,
  keys = {
    { '<leader>hm', '<cmd>lua require("harpoon.mark").add_file()<CR>',        desc = 'Harpoon Mark' },
    { '<leader>ha', '<cmd>lua require("harpoon.ui").toggle_quick_menu()<CR>', desc = 'Harpoon' },
    { '<leader>hh', function() require("harpoon.ui").nav_file(1) end,         desc = 'Harpoon Mark 1' },
    { '<leader>ht', function() require("harpoon.ui").nav_file(2) end,         desc = 'Harpoon Mark 2' },
    { '<leader>hn', function() require("harpoon.ui").nav_file(3) end,         desc = 'Harpoon Mark 3' },
    { '<leader>hs', function() require("harpoon.ui").nav_file(4) end,         desc = 'Harpoon Mark 4' },
  },
}
