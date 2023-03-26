return {
  'ggandor/leap-spooky.nvim',
  lazy = true,
  config = function()
    local ok, leap_spooky = pcall(require, 'leap-spooky')
    if not ok then
      return
    end
    leap_spooky.setup {
      paste_on_remote_yank = true
    }
  end
}
