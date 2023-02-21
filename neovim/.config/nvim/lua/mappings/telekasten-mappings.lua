local map = vim.keymap.set
local opts = { noremap = true, silent = true }

-- [[ Telekasten ]]
map('i', '[[', '<cmd>:lua require("telekasten").insert_link({i=true})<CR>', opts)

local wk = require('which-key')

wk.register({
    z = {
        name = 'telekasten',
        f = {'<cmd>lua require("telekasten").find_notes()<CR>', 'Find Notes'},
        F = {'<cmd>lua require("telekasten").find_friends()<CR>', 'Find Friends'},
        g = {'<cmd>lua require("telekasten").search_notes()<CR>', 'Grep through Notes'},
        n = {'<cmd>lua require("telekasten").new_note()<CR>', 'New Note'},
        N = {'<cmd>lua require("telekasten").new_templated_note()<CR>', 'New Templated Note'},
        z = {'<cmd>lua require("telekasten").follow_link()<CR>', 'Follow Link'},
        b = {'<cmd>lua require("telekasten").show_backlinks()<CR>', 'Show Backlinks'},
        a = {'<cmd>lua require("telekasten").show_tags()<CR>', 'Show Tags'},
        r = {'<cmd>lua require("telekasten").rename_note()<CR>', 'Rename note'},
        c = {'<cmd>lua require("telekasten").show_calendar()<CR>', 'Show calendar'},
        t = {'<cmd>lua require("telekasten").toggle_todo()<CR>', 'Toggle todo'},
    },
}, {prefix = '<leader>'})

wk.register({
    z = {
        name = 'telekasten',
        t = {'<cmd>\'<,\'>lua require("telekasten").toggle_todo()<CR>', 'Toggle todo'},
    },
}, {mode = 'v'})
-- [[]]
