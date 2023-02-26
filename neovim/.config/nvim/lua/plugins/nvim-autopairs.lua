return {
  'windwp/nvim-autopairs',
  config = function()
    local status, autopairs = pcall(require, 'nvim-autopairs')
    if not status then return end
    autopairs.setup {
      disable_filetype = { 'TelescopePrompt' },
      enable_check_bracket_line = false,
      ingnored_next_char = '[%w%.]'
    }
  end
}
