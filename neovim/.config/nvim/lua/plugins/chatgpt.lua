return {
  'jackMort/ChatGPT.nvim',
  dependencies = {
    'MunifTanjim/nui.nvim',
    'nvim-lua/plenary.nvim',
    'nvim-telescope/telescope.nvim',
  },
  cmd = 'ChatGPT',
  config = function()
    local ok, chatgpt = pcall(require, 'chatgpt')
    if not ok then
      return
    end
    chatgpt.setup({
      keymaps = {
        submit = '<CR>',
      }
    })
  end
}
