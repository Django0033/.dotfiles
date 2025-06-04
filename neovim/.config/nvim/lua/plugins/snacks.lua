return {
    'folke/snacks.nvim',
    priority = 1000,
    lazy = false,
    ---@type snacks.Config
    opts = {
        dashboard = {enable = true},
        lazygit = {enable = true},
        notifier = {enable = true},
        -- picker = {enable = true},
    },
    keys = {
        {'<leader>lg', function() Snacks.lazygit() end, desc = 'Lazygit'},
        -- {'<leader>pf', function() Snacks.picker.smart() end, desc = 'Smart Find File'},
        {'<leader>pn', function() Snacks.picker.notifications() end, desc = 'Notifications'},
    },
}
