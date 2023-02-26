return {
  'nvim-telescope/telescope-file-browser.nvim',
  dependencies = {
    'nvim-telescope/telescope.nvim',
    'nvim-lua/plenary.nvim',
  },
  config = function ()
    local status, file_browser = pcall(require, 'telescope-file-browser.nvim')
    if not status then
      return
    end
    file_browser.setup{}
  end
}
