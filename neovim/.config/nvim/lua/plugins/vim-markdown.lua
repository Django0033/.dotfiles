return {
  'preservim/vim-markdown',
  dependencies = {
    'godlygeek/tabular',
  },
  config = function()
    local status, vim_markdown = pcall(require, 'vim-markdown')
    if not status then return end
    vim_markdown.setup {}
  end
}
