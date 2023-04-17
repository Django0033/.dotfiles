return {
  'akinsho/bufferline.nvim',
  -- tag = 'v3.*',
  dependencies = {
    'nvim-tree/nvim-web-devicons',
  },
  event = 'VeryLazy',
  keys = {
    { '<leader>bp', '<cmd>BufferLineTogglePin<CR>',            desc = 'Toggle Pin' },
    { '<leader>bP', '<cmd>BufferLineGroupClose ungrouped<CR>', desc = 'Delete non-pinned buffers' },
  },
  config = function()
    local status, bufferline = pcall(require, 'bufferline')
    if not status then
      return
    end
    bufferline.setup {
      options = {
        diagnostics = 'nvim_lsp',
        separator_style = 'slant',
        always_show_bufferline = false,
        show_buffer_close_icons = false,
        show_close_icon = false,
      }
    }
  end
}
