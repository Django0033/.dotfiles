return {
  {
    'dracula/vim',
    name = 'dracula',
  },
  {
    'lunarvim/synthwave84.nvim',
    opts = {
      glow = {
        error_msg = true,
        type2 = true,
        func = true,
        keyword = true,
        operator = false,
        buffer_current_target = true,
        buffer_visible_target = true,
        buffer_inactive_target = true,
      }
    }
  },
  {
    'folke/tokyonight.nvim',
  },
  {
    'sainnhe/gruvbox-material',
    name = 'gruvbox',
    config = function()
      if vim.o.termguicolors then
        vim.o.termguicolors = true
      end

      vim.o.background = 'dark'

      vim.g.gruvbox_material_background = 'hard'
      vim.g.gruvbox_material_foreground = 'original'
      vim.g.gruvbox_material_better_performance = 1

      -- vim.cmd('colorscheme gruvbox-material')

      -- vim.g.lightline = { colorscheme = 'gruvbox_material' }
    end
  },
  {
    'rebelot/kanagawa.nvim',
    config = function()
      -- vim.cmd('colorscheme kanagawa-dragon')
    end
  },
  {
    'olimorris/onedarkpro.nvim',
    config = function()
      -- vim.cmd('colorscheme onedark_dark')
    end
  },
  {
    'nyngwang/nvimgelion',
    config = function()
      vim.cmd('colorscheme nvimgelion')
    end
  }
}
