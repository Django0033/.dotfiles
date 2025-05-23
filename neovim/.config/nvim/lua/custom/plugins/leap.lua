return {
  'ggandor/leap.nvim',
  dependencies = {
    'tpope/vim-repeat',
  },
  keys = {
    { 's', mode = { 'n', 'x', 'o' }, desc = 'Leap forward to' },
    { 'S', mode = { 'n', 'x', 'o' }, desc = 'Leap backward to' },
    { 'gs', mode = { 'n', 'x', 'o' }, desc = 'Leap from windows' },
  },
  config = function(_, opts)
    local ok, leap = pcall(require, 'leap')
    if not ok then
      return
    end
    for k, v in pairs(opts) do
      leap.opts[k] = v
    end
    leap.add_default_mappings(true)
    vim.keymap.del({ 'x', 'o' }, 'x')
    vim.keymap.del({ 'x', 'o' }, 'X')
  end,
}
