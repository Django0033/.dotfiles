return {
  'lukas-reineke/indent-blankline.nvim',
  event = { 'BufReadPost', 'BufNewFile' },
  config = function()
    local ok, indent_blankline = pcall(require, 'ibl')
    if not ok then
      return
    end

    vim.opt.list = true

    indent_blankline.setup {}
  end,
}
