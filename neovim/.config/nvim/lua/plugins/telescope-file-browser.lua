return {
  'nvim-telescope/telescope-file-browser.nvim',
  lazy = true,
  config = function ()
    local status, file_browser = pcall(require, 'telescope-file-browser.nvim')
    if not status then
      return
    end
    file_browser.setup{}
  end
}
