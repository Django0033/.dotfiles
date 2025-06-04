return {
  'Mofiqul/dracula.nvim',
  priority = 1000,
  config = function()
    ---@diagnostic disable-next-line: missing-fields
    require('dracula').setup {
      styles = {
        comments = { italic = true },
      },
    }
    vim.cmd.colorscheme 'dracula'
  end,
}
