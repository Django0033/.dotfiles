return {
  'preservim/vim-markdown',
  dependencies = {
    'godlygeek/tabular',
  },
  ft = 'markdown',
  opt = {},
  config = function()
    -- local ok, vim_markdown = pcall(require, 'vim-markdown')
    -- if not ok then
    --   return
    -- end
    -- vim_markdown.setup()

    local map = vim.keymap.set
    local opts = { noremap = true, silent = true }

    map('n', '<leader>mt', '<cmd>Toc<CR>', opts)
  end
}
