return {
  'nvim-lualine/lualine.nvim',
  dependencies = {
    'nvim-tree/nvim-web-devicons',
  },
  config = function()
    local ok, lualine = pcall(require, 'lualine')
    if not ok then
      return
    end
    lualine.setup()
  end
}
