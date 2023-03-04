return {
  'rmagatti/alternate-toggler',
  keys = {
    { '<leader>ta', ':ToggleAlternate<CR>', desc = 'Alternate' },
  },
  opts = {
    alternates = {
      ['=='] = '!='
    }
  },
}
