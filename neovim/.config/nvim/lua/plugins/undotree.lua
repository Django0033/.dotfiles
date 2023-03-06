return {
  'mbbill/undotree',
  config = function()
    local map = vim.keymap.set
    local opts = { noremap = true, silent = true }
    map('n', '<leader>u', vim.cmd.UndotreeToggle, opts)
  end
}
