-- Keybindings
local wk = require('which-key')

wk.register({
    g = {
        name = 'Neogit',
        s = {'<cmd>Neogit<CR>', 'Git Status'},
    },
}, {prefix = '<leader>'})
